import 'package:intl/intl.dart';

extension StringX on String {
  bool availablNullCheckString() {
    return this != "null" && isNotEmpty;
  }

  DateTime toDateTime() {
    var dateFormat = DateFormat("dd MMMM yyyy");
    return dateFormat.parse(this);
  }
}
