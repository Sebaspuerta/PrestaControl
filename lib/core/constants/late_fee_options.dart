import '../utils/currency_formatter.dart';

/// Valores predefinidos de mora/recargo por atraso, en pesos colombianos.
const List<int> lateFeeOptions = [5000, 10000, 15000, 20000];

/// Formatea un valor de mora usando el mismo formato COP del resto de la app.
String formatLateFee(int value) => formatCOP(value);
