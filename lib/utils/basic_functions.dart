import 'package:intl/intl.dart';

class BasicFunctions {
  static String formatCurrency(num value) {
    final _number = NumberFormat.currency(
        locale: 'id-ID', symbol: "IDR ", decimalDigits: 0);
    return _number.format(value);
  }
}
