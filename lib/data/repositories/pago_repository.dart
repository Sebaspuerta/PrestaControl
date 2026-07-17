import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/daos/pago_dao.dart';
import '../../core/database/daos/prestamo_dao.dart';
import '../../core/database/tables.dart';
import '../../core/providers/database_provider.dart';
import '../../core/utils/loan_calculator.dart';

/// Envuelve [PagoDao] y desglosa cada pago registrado (mora -> interés ->
/// capital) usando el estado de deuda calculado por
/// [loan_calculator.dart] antes de guardarlo.
class PagoRepository {
  PagoRepository(this._pagoDao, this._prestamoDao);

  final PagoDao _pagoDao;
  final PrestamoDao _prestamoDao;

  /// Registra un pago: calcula el estado de deuda actual del préstamo,
  /// imputa [monto] en orden mora -> interés -> capital y guarda el pago
  /// con ese desglose ya calculado. Si el pago salda toda la deuda, marca
  /// el préstamo como pagado.
  Future<void> registrarPago({
    required String prestamoId,
    required double monto,
    String? registradoPor,
  }) async {
    final prestamo = await _prestamoDao.getPrestamoById(prestamoId);
    if (prestamo == null) {
      throw StateError('Prestamo no encontrado: $prestamoId');
    }

    final totalPagadoPrevio = await _pagoDao.totalPagadoByPrestamo(
      prestamoId,
    );
    final estadoActual = calcularEstadoActual(
      capitalInicial: prestamo.capitalInicial,
      tasaInteres: prestamo.tasaInteres,
      montoMoraPorDia: prestamo.montoMoraPorDia,
      fechaPagoEsperada: prestamo.fechaPagoEsperada,
      totalPagadoHastaAhora: totalPagadoPrevio,
    );

    final desglose = imputarPago(
      montoPago: monto,
      moraPendiente: estadoActual.moraPendiente,
      interesPendiente: estadoActual.interesPendiente,
      capitalPendiente: estadoActual.capitalPendiente,
    );

    await _pagoDao.insertPago(
      PagosCompanion.insert(
        id: const Uuid().v4(),
        prestamoId: prestamoId,
        montoPagado: monto,
        fechaPago: DateTime.now(),
        aplicadoAMora: Value(desglose.aplicadoAMora),
        aplicadoAInteres: Value(desglose.aplicadoAInteres),
        aplicadoACapital: Value(desglose.aplicadoACapital),
        registradoPor: Value(registradoPor),
      ),
    );

    final saldaTodaLaDeuda = monto >= estadoActual.totalAdeudado;
    if (saldaTodaLaDeuda) {
      await _prestamoDao.updateEstadoPrestamo(
        prestamoId,
        EstadoPrestamo.pagado,
      );
    }
  }
}

final pagoRepositoryProvider = Provider<PagoRepository>((ref) {
  return PagoRepository(
    ref.watch(pagoDaoProvider),
    ref.watch(prestamoDaoProvider),
  );
});
