/// Motor de cálculo financiero de préstamos. Funciones y clases puras,
/// sin dependencias de la capa de datos (Drift) ni de estado (Riverpod),
/// para poder testearlas de forma aislada.
library;

/// Interés total del préstamo (no diario, sobre el capital completo).
/// Ej: capital 500000, tasa 20 -> 100000.
double calcularInteresTotal(double capital, int tasaInteres) {
  return capital * (tasaInteres / 100);
}

/// Valor total a pagar: capital + interés total.
double calcularValorTotalAPagar(double capital, int tasaInteres) {
  return capital + calcularInteresTotal(capital, tasaInteres);
}

/// Días completos de atraso respecto a [fechaPagoEsperada]. Retorna 0 si
/// [fechaReferencia] es igual o anterior a la fecha esperada de pago.
int calcularDiasVencidos(DateTime fechaPagoEsperada, DateTime fechaReferencia) {
  if (!fechaReferencia.isAfter(fechaPagoEsperada)) return 0;
  return fechaReferencia.difference(fechaPagoEsperada).inDays;
}

/// Mora acumulada según los días vencidos. Nunca negativa.
double calcularMoraAcumulada(int diasVencidos, int montoMoraPorDia) {
  final mora = diasVencidos * montoMoraPorDia;
  return mora < 0 ? 0 : mora.toDouble();
}

/// Resultado de aplicar un pago a los rubros pendientes de un préstamo.
class DesglosePago {
  const DesglosePago({
    required this.aplicadoAMora,
    required this.aplicadoAInteres,
    required this.aplicadoACapital,
    required this.sobrante,
  });

  final double aplicadoAMora;
  final double aplicadoAInteres;
  final double aplicadoACapital;

  /// Lo que queda del pago después de cubrir mora, interés y capital.
  final double sobrante;
}

/// Aplica [montoPago] a la deuda en el orden estricto: mora -> interés ->
/// capital. Cualquier remanente tras cubrir todo se reporta como
/// [DesglosePago.sobrante].
DesglosePago imputarPago({
  required double montoPago,
  required double moraPendiente,
  required double interesPendiente,
  required double capitalPendiente,
}) {
  var restante = montoPago;

  final aplicadoAMora = _tomarDe(restante, moraPendiente);
  restante -= aplicadoAMora;

  final aplicadoAInteres = _tomarDe(restante, interesPendiente);
  restante -= aplicadoAInteres;

  final aplicadoACapital = _tomarDe(restante, capitalPendiente);
  restante -= aplicadoACapital;

  return DesglosePago(
    aplicadoAMora: aplicadoAMora,
    aplicadoAInteres: aplicadoAInteres,
    aplicadoACapital: aplicadoACapital,
    sobrante: restante,
  );
}

/// Toma de [disponible] hasta cubrir [rubroPendiente], sin excederlo ni
/// devolver valores negativos.
double _tomarDe(double disponible, double rubroPendiente) {
  if (disponible <= 0 || rubroPendiente <= 0) return 0;
  return disponible < rubroPendiente ? disponible : rubroPendiente;
}

/// Estado de la deuda de un préstamo en un momento dado.
class EstadoDeuda {
  EstadoDeuda({
    required this.capitalPendiente,
    required this.interesPendiente,
    required this.moraPendiente,
    required this.diasVencidos,
  })  : totalAdeudado = capitalPendiente + interesPendiente + moraPendiente,
        enMora = diasVencidos > 0;

  final double capitalPendiente;
  final double interesPendiente;
  final double moraPendiente;

  /// Suma de capital, interés y mora pendientes.
  final double totalAdeudado;
  final int diasVencidos;
  final bool enMora;
}

/// Calcula el estado completo de la deuda de un préstamo, restando
/// [totalPagadoHastaAhora] en el mismo orden de imputación que
/// [imputarPago] (mora -> interés -> capital) para mantener el desglose
/// consistente con los pagos individuales.
EstadoDeuda calcularEstadoActual({
  required double capitalInicial,
  required int tasaInteres,
  required int montoMoraPorDia,
  required DateTime fechaPagoEsperada,
  required double totalPagadoHastaAhora,
  DateTime? fechaReferencia,
}) {
  final referencia = fechaReferencia ?? DateTime.now();
  final diasVencidos = calcularDiasVencidos(fechaPagoEsperada, referencia);
  final interesTotal = calcularInteresTotal(capitalInicial, tasaInteres);
  final moraTotal = calcularMoraAcumulada(diasVencidos, montoMoraPorDia);

  final desglose = imputarPago(
    montoPago: totalPagadoHastaAhora,
    moraPendiente: moraTotal,
    interesPendiente: interesTotal,
    capitalPendiente: capitalInicial,
  );

  return EstadoDeuda(
    capitalPendiente: capitalInicial - desglose.aplicadoACapital,
    interesPendiente: interesTotal - desglose.aplicadoAInteres,
    moraPendiente: moraTotal - desglose.aplicadoAMora,
    diasVencidos: diasVencidos,
  );
}
