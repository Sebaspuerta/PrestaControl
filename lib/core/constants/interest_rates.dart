/// Tasas de interés disponibles para los préstamos.
enum TasaInteres { diez, quince, veinte, veinticinco, treinta }

extension TasaInteresValue on TasaInteres {
  /// Valor numérico de la tasa, expresado como porcentaje (ej. 10 = 10%).
  double get valor {
    switch (this) {
      case TasaInteres.diez:
        return 10;
      case TasaInteres.quince:
        return 15;
      case TasaInteres.veinte:
        return 20;
      case TasaInteres.veinticinco:
        return 25;
      case TasaInteres.treinta:
        return 30;
    }
  }
}
