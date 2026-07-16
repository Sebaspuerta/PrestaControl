import 'package:intl/intl.dart';

final NumberFormat _copFormat = NumberFormat.currency(
  locale: 'es_CO',
  symbol: r'$',
  decimalDigits: 0,
);

/// Formatea [value] como pesos colombianos (ej. 15000 -> "$ 15.000").
String formatCOP(num value) => _copFormat.format(value);
