// Package imports:
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String format(DateFormat format) {
    return format.format(this);
  }

  String formatYYYYMMddHHmm() {
    return DateFormat('yyyyMMddHHmm').format(this);
  }

  String formatYYYYMMddHHmmss() {
    return DateFormat('yyyyMMddHHmmss').format(this);
  }
}
