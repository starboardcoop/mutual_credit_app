import 'package:intl/intl.dart';

class HoursFormatter {
  static String format(double hours) {
    return NumberFormat.currency(symbol: "HR ", decimalDigits: 2).format(hours);
  }

  static String formatDecimal(double hours) {
    return NumberFormat.currency(symbol: "", decimalDigits: 2).format(hours);
  }
}
