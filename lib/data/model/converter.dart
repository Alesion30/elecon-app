import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, DateTime?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(DateTime? json) {
    return json;
  }

  @override
  DateTime? toJson(DateTime? object) {
    return object!;
  }
}
