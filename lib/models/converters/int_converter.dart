import 'package:freezed_annotation/freezed_annotation.dart';

class IntConverter implements JsonConverter<int, Object> {
  const IntConverter();

  @override
  int fromJson(Object json) {
    if (json is String) {
      return int.parse(json);
    } else {
      return (json as num).toInt();
    }
  }

  @override
  Object toJson(int data) {
    return data;
  }
}
