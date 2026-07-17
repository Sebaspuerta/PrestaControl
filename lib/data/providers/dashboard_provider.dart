import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers/database_provider.dart';
import '../../core/utils/loan_calculator.dart';

/// Métricas agregadas de la cartera para el dashboard.
class DashboardMetrics {
  const DashboardMetrics({
    required this.carteraTotalActiva,
    required this.totalPorCobrarHoy,
    required this.totalEnMora,
    required this.clientesAlDia,
    required this.clientesEnMora,
  });

  /// Suma de la deuda pendiente (capital + interés + mora) de todos los
  /// préstamos activos o en mora.
  final double carteraTotalActiva;

  /// Suma de la deuda pendiente de los préstamos cuya fecha de pago
  /// esperada es hoy.
  final double totalPorCobrarHoy;

  /// Suma de la deuda pendiente de los préstamos en mora.
  final double totalEnMora;

  final int clientesAlDia;
  final int clientesEnMora;
}

/// Métricas del dashboard, recalculadas de forma reactiva cada vez que
/// cambia la lista de préstamos activos (uno nuevo, o uno que pasa a
/// "pagado"). Un pago parcial que no cierra el préstamo no altera esa
/// lista; invalida este provider tras registrar un pago si necesitas que
/// las cifras se refresquen de inmediato.
final dashboardMetricsProvider = StreamProvider<DashboardMetrics>((ref) {
  final prestamoDao = ref.watch(prestamoDaoProvider);
  final pagoDao = ref.watch(pagoDaoProvider);

  return prestamoDao.watchPrestamosActivos().asyncMap((prestamos) async {
    final hoy = DateTime.now();

    var carteraTotalActiva = 0.0;
    var totalPorCobrarHoy = 0.0;
    var totalEnMora = 0.0;
    var clientesAlDia = 0;
    var clientesEnMora = 0;

    for (final prestamo in prestamos) {
      final totalPagado = await pagoDao.totalPagadoByPrestamo(prestamo.id);
      final estado = calcularEstadoActual(
        capitalInicial: prestamo.capitalInicial,
        tasaInteres: prestamo.tasaInteres,
        montoMoraPorDia: prestamo.montoMoraPorDia,
        fechaPagoEsperada: prestamo.fechaPagoEsperada,
        totalPagadoHastaAhora: totalPagado,
        fechaReferencia: hoy,
      );

      carteraTotalActiva += estado.totalAdeudado;

      if (estado.enMora) {
        totalEnMora += estado.totalAdeudado;
        clientesEnMora++;
      } else {
        clientesAlDia++;
      }

      if (_esMismoDia(prestamo.fechaPagoEsperada, hoy)) {
        totalPorCobrarHoy += estado.totalAdeudado;
      }
    }

    return DashboardMetrics(
      carteraTotalActiva: carteraTotalActiva,
      totalPorCobrarHoy: totalPorCobrarHoy,
      totalEnMora: totalEnMora,
      clientesAlDia: clientesAlDia,
      clientesEnMora: clientesEnMora,
    );
  });
});

bool _esMismoDia(DateTime a, DateTime b) {
  return a.year == b.year && a.month == b.month && a.day == b.day;
}
