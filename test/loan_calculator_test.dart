import 'package:flutter_test/flutter_test.dart';
import 'package:prestacontrol/core/utils/loan_calculator.dart';

void main() {
  group('calcularInteresTotal', () {
    const capital = 500000.0;

    test('tasa 10%', () {
      expect(calcularInteresTotal(capital, 10), 50000);
    });

    test('tasa 15%', () {
      expect(calcularInteresTotal(capital, 15), 75000);
    });

    test('tasa 20%', () {
      expect(calcularInteresTotal(capital, 20), 100000);
    });

    test('tasa 25%', () {
      expect(calcularInteresTotal(capital, 25), 125000);
    });

    test('tasa 30%', () {
      expect(calcularInteresTotal(capital, 30), 150000);
    });
  });

  group('calcularValorTotalAPagar', () {
    test('capital + interes total', () {
      expect(calcularValorTotalAPagar(500000, 20), 600000);
    });
  });

  group('Prestamo sin mora', () {
    test('fechaReferencia antes del vencimiento -> 0 dias vencidos', () {
      final fechaPagoEsperada = DateTime(2026, 6, 10);
      final fechaReferencia = DateTime(2026, 6, 5);

      expect(
        calcularDiasVencidos(fechaPagoEsperada, fechaReferencia),
        0,
      );
    });

    test('fechaReferencia igual al vencimiento -> 0 dias vencidos', () {
      final fecha = DateTime(2026, 6, 10);

      expect(calcularDiasVencidos(fecha, fecha), 0);
    });

    test('estado actual sin mora: enMora es false y moraPendiente es 0', () {
      final estado = calcularEstadoActual(
        capitalInicial: 500000,
        tasaInteres: 20,
        montoMoraPorDia: 10000,
        fechaPagoEsperada: DateTime(2026, 6, 10),
        totalPagadoHastaAhora: 0,
        fechaReferencia: DateTime(2026, 6, 5),
      );

      expect(estado.diasVencidos, 0);
      expect(estado.enMora, isFalse);
      expect(estado.moraPendiente, 0);
      expect(estado.interesPendiente, 100000);
      expect(estado.capitalPendiente, 500000);
      expect(estado.totalAdeudado, 600000);
    });
  });

  group('Prestamo con mora', () {
    test('5 dias de atraso calcula dias vencidos correctamente', () {
      final fechaPagoEsperada = DateTime(2026, 6, 1);
      final fechaReferencia = DateTime(2026, 6, 6);

      expect(
        calcularDiasVencidos(fechaPagoEsperada, fechaReferencia),
        5,
      );
    });

    test('calcularMoraAcumulada multiplica dias vencidos por monto diario', () {
      expect(calcularMoraAcumulada(5, 10000), 50000);
    });

    test('calcularMoraAcumulada nunca es negativa', () {
      expect(calcularMoraAcumulada(0, 10000), 0);
    });

    test('estado actual con mora: enMora true y mora acumulada correcta', () {
      final estado = calcularEstadoActual(
        capitalInicial: 500000,
        tasaInteres: 20,
        montoMoraPorDia: 10000,
        fechaPagoEsperada: DateTime(2026, 6, 1),
        totalPagadoHastaAhora: 0,
        fechaReferencia: DateTime(2026, 6, 6),
      );

      expect(estado.diasVencidos, 5);
      expect(estado.enMora, isTrue);
      expect(estado.moraPendiente, 50000);
      expect(estado.interesPendiente, 100000);
      expect(estado.capitalPendiente, 500000);
      expect(estado.totalAdeudado, 650000);
    });
  });

  group('imputarPago', () {
    test('pago que solo cubre parte de la mora', () {
      final desglose = imputarPago(
        montoPago: 20000,
        moraPendiente: 50000,
        interesPendiente: 100000,
        capitalPendiente: 500000,
      );

      expect(desglose.aplicadoAMora, 20000);
      expect(desglose.aplicadoAInteres, 0);
      expect(desglose.aplicadoACapital, 0);
      expect(desglose.sobrante, 0);
    });

    test('pago que cubre mora + interes pero no todo el capital', () {
      final desglose = imputarPago(
        montoPago: 200000,
        moraPendiente: 50000,
        interesPendiente: 100000,
        capitalPendiente: 500000,
      );

      expect(desglose.aplicadoAMora, 50000);
      expect(desglose.aplicadoAInteres, 100000);
      expect(desglose.aplicadoACapital, 50000);
      expect(desglose.sobrante, 0);
    });

    test('pago que cubre absolutamente todo y deja sobrante', () {
      final desglose = imputarPago(
        montoPago: 700000,
        moraPendiente: 50000,
        interesPendiente: 100000,
        capitalPendiente: 500000,
      );

      expect(desglose.aplicadoAMora, 50000);
      expect(desglose.aplicadoAInteres, 100000);
      expect(desglose.aplicadoACapital, 500000);
      expect(desglose.sobrante, 50000);
    });

    test('pago exacto que cubre justo un rubro completo', () {
      final desglose = imputarPago(
        montoPago: 50000,
        moraPendiente: 50000,
        interesPendiente: 100000,
        capitalPendiente: 500000,
      );

      expect(desglose.aplicadoAMora, 50000);
      expect(desglose.aplicadoAInteres, 0);
      expect(desglose.aplicadoACapital, 0);
      expect(desglose.sobrante, 0);
    });

    test('montoPago = 0 no aplica nada y no deja sobrante', () {
      final desglose = imputarPago(
        montoPago: 0,
        moraPendiente: 50000,
        interesPendiente: 100000,
        capitalPendiente: 500000,
      );

      expect(desglose.aplicadoAMora, 0);
      expect(desglose.aplicadoAInteres, 0);
      expect(desglose.aplicadoACapital, 0);
      expect(desglose.sobrante, 0);
    });

    test('sin deuda pendiente, todo el pago es sobrante', () {
      final desglose = imputarPago(
        montoPago: 15000,
        moraPendiente: 0,
        interesPendiente: 0,
        capitalPendiente: 0,
      );

      expect(desglose.aplicadoAMora, 0);
      expect(desglose.aplicadoAInteres, 0);
      expect(desglose.aplicadoACapital, 0);
      expect(desglose.sobrante, 15000);
    });
  });

  group('calcularEstadoActual con pagos parciales ya aplicados', () {
    test('el pago reduce mora e interes en orden, dejando capital intacto', () {
      final estado = calcularEstadoActual(
        capitalInicial: 500000,
        tasaInteres: 20,
        montoMoraPorDia: 10000,
        fechaPagoEsperada: DateTime(2026, 6, 1),
        totalPagadoHastaAhora: 70000,
        fechaReferencia: DateTime(2026, 6, 6),
      );

      // mora total 50000, interes total 100000, capital 500000
      // pago 70000 -> cubre mora (50000) + 20000 de interes
      expect(estado.diasVencidos, 5);
      expect(estado.enMora, isTrue);
      expect(estado.moraPendiente, 0);
      expect(estado.interesPendiente, 80000);
      expect(estado.capitalPendiente, 500000);
      expect(estado.totalAdeudado, 580000);
    });

    test('pago parcial que ya alcanza a tocar el capital', () {
      final estado = calcularEstadoActual(
        capitalInicial: 500000,
        tasaInteres: 20,
        montoMoraPorDia: 10000,
        fechaPagoEsperada: DateTime(2026, 6, 1),
        totalPagadoHastaAhora: 250000,
        fechaReferencia: DateTime(2026, 6, 6),
      );

      // mora total 50000, interes total 100000 -> 150000 cubiertos
      // restante 100000 va a capital
      expect(estado.moraPendiente, 0);
      expect(estado.interesPendiente, 0);
      expect(estado.capitalPendiente, 400000);
      expect(estado.totalAdeudado, 400000);
    });
  });
}
