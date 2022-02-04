import 'package:freezed_annotation/freezed_annotation.dart';

class DoubleConverter implements JsonConverter<double, Object> {
  const DoubleConverter();

  @override
  double fromJson(Object maybeDouble) {
    const String nan = 'NaN';
    const String infinity = 'INF';
    const String negativeInfinity = '-INF';

    if (maybeDouble is String) {
      return double.parse(maybeDouble);
    } else if (maybeDouble == nan) {
      return double.nan;
    } else if (maybeDouble == negativeInfinity) {
      return double.negativeInfinity;
    } else if (maybeDouble == infinity) {
      return double.infinity;
    } else {
      return (maybeDouble as num).toDouble();
    }
  }

  @override
  Object toJson(double data) {
    return data;
  }
}
