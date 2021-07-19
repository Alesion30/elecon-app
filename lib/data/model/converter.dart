import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:elecon/foundation/constants.dart';
export 'package:enum_to_string/enum_to_string.dart';

class TimeStampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const TimeStampConverter();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? date) {
    return Timestamp.fromDate(date!);
  }
}

class AppModeConverter implements JsonConverter<AppMode?, String?> {
  const AppModeConverter();

  @override
  AppMode? fromJson(String? mode) {
    return EnumToString.fromString(AppMode.values, mode!);
  }

  @override
  String? toJson(AppMode? mode) {
    return mode.toString().split('.').last;
  }
}

class DirConverter implements JsonConverter<Dir?, String?> {
  const DirConverter();

  @override
  Dir? fromJson(String? dir) {
    return EnumToString.fromString(Dir.values, dir!);
  }

  @override
  String? toJson(Dir? dir) {
    return dir.toString().split('.').last;
  }
}
