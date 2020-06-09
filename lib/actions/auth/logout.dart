library logout;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';

part 'logout.g.dart';

abstract class LogOut //
    implements
        Built<LogOut, LogOutBuilder>,
        AppAction //
{
  factory LogOut([void Function(LogOutBuilder b) updates]) = _$LogOut;

  LogOut._();
}

abstract class LogOutSuccessful //
    implements
        Built<LogOutSuccessful, LogOutSuccessfulBuilder>,
        AppAction //
{
  factory LogOutSuccessful([void Function(LogOutSuccessfulBuilder b) updates]) = _$LogOutSuccessful;

  LogOutSuccessful._();
}

abstract class LogOutError //
    implements
        Built<LogOutError, LogOutErrorBuilder>,
        ErrorAction //
{
  factory LogOutError(Object error) {
    return _$LogOutError((LogOutErrorBuilder b) => b.error = error);
  }

  LogOutError._();

  @override
  Object get error;
}
