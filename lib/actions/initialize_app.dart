library initialize_app;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';

part 'initialize_app.g.dart';

abstract class InitializeApp //
    implements
        Built<InitializeApp, InitializeAppBuilder>,
        AppAction //
{
  factory InitializeApp([void Function(InitializeAppBuilder b) updates]) = _$InitializeApp;

  InitializeApp._();
}

abstract class InitializeAppSuccessful //
    implements
        Built<InitializeAppSuccessful, InitializeAppSuccessfulBuilder>,
        AppAction //
{
  factory InitializeAppSuccessful([void Function(InitializeAppSuccessfulBuilder b) updates]) =
      _$InitializeAppSuccessful;

  InitializeAppSuccessful._();
}

abstract class InitializeAppError //
    implements
        Built<InitializeAppError, InitializeAppErrorBuilder>,
        ErrorAction //
{
  factory InitializeAppError(Object error) {
    return _$InitializeAppError((InitializeAppErrorBuilder b) => b.error = error);
  }

  InitializeAppError._();

  @override
  Object get error;
}
