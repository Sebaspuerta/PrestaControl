import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/daos/pago_dao.dart';
import '../../core/database/daos/prestamo_dao.dart';
import '../../core/providers/database_provider.dart';
import '../../core/utils/loan_calculator.dart';

/// Envuelve [PrestamoDao] y [PagoDao] para exponer préstamos ya combinados
/// con el motor de cálculo financiero de [loan_calculator.dart].
class PrestamoRepository {
  PrestamoRepository(this._prestamoDao, this._pagoDao);

  final PrestamoDao _prestamoDao;
  final PagoDao _pagoDao;

  Stream<List<Prestamo>> watchPrestamosActivos() {
    return _prestamoDao.watchPrestamosActivos();
  }

  Stream<List<Prestamo>> watchPrestamosByCliente(String clienteId) {
    return _prestamoDao.watchPrestamosByCliente(clienteId);
  }

  /// Crea un préstamo nuevo calculando su [valorTotalAPagar] y
  /// [fechaPagoEsperada] a partir de [loan_calculator.dart], y retorna el
  /// id generado.
  ///
  /// Nota: NO hace falta invalidar `dashboardMetricsProvider` a mano tras
  /// llamar a este método. Este insert escribe en la tabla `Prestamos`,
  /// que es justo la que observa `watchPrestamosActivos()`, así que Drift
  /// dispara el stream del dashboard automáticamente.
  Future<String> crearPrestamo({
    required String clienteId,
    required double capital,
    required int tasaInteres,
    required int plazoDias,
    required DateTime fechaDesembolso,
    required int montoMoraPorDia,
  }) async {
    final id = const Uuid().v4();
    final valorTotalAPagar = calcularValorTotalAPagar(capital, tasaInteres);
    final fechaPagoEsperada = fechaDesembolso.add(Duration(days: plazoDias));

    await _prestamoDao.insertPrestamo(
      PrestamosCompanion.insert(
        id: id,
        clienteId: clienteId,
        capitalInicial: capital,
        tasaInteres: tasaInteres,
        plazoDias: plazoDias,
        fechaDesembolso: fechaDesembolso,
        fechaPagoEsperada: fechaPagoEsperada,
        valorTotalAPagar: valorTotalAPagar,
        montoMoraPorDia: montoMoraPorDia,
      ),
    );
    return id;
  }

  /// Estado de deuda en tiempo real de un préstamo: combina el préstamo con
  /// el total pagado hasta ahora ([PagoDao.totalPagadoByPrestamo]) y lo pasa
  /// por [calcularEstadoActual]. Se recalcula cada vez que cambian los pagos
  /// del préstamo.
  Stream<EstadoDeuda> watchEstadoDeuda(String prestamoId) {
    return _pagoDao.watchPagosByPrestamo(prestamoId).asyncMap((_) async {
      final prestamo = await _prestamoDao.getPrestamoById(prestamoId);
      if (prestamo == null) {
        throw StateError('Prestamo no encontrado: $prestamoId');
      }

      final totalPagado = await _pagoDao.totalPagadoByPrestamo(prestamoId);

      return calcularEstadoActual(
        capitalInicial: prestamo.capitalInicial,
        tasaInteres: prestamo.tasaInteres,
        montoMoraPorDia: prestamo.montoMoraPorDia,
        fechaPagoEsperada: prestamo.fechaPagoEsperada,
        totalPagadoHastaAhora: totalPagado,
      );
    });
  }
}

final prestamoRepositoryProvider = Provider<PrestamoRepository>((ref) {
  return PrestamoRepository(
    ref.watch(prestamoDaoProvider),
    ref.watch(pagoDaoProvider),
  );
});
