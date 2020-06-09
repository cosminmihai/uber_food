library registration;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/auth/app_user.dart';

part 'registration.g.dart';

abstract class Registration //
    implements
        Built<Registration, RegistrationBuilder>,
        AppAction //
{
  factory Registration(ActionResult result) {
    return _$Registration((RegistrationBuilder b) {
      b.result = result;
    });
  }

  Registration._();

  ActionResult get result;
}

abstract class RegistrationSuccessful //
    implements
        Built<RegistrationSuccessful, RegistrationSuccessfulBuilder>,
        AppAction //
{
  factory RegistrationSuccessful(AppUser appUser) {
    return _$RegistrationSuccessful((RegistrationSuccessfulBuilder b) {
      b.user = appUser.toBuilder();
    });
  }

  RegistrationSuccessful._();

  AppUser get user;
}

abstract class RegistrationError //
    implements
        Built<RegistrationError, RegistrationErrorBuilder>,
        ErrorAction //
{
  factory RegistrationError(Object error) {
    return _$RegistrationError((RegistrationErrorBuilder b) => b.error = error);
  }

  RegistrationError._();

  @override
  Object get error;
}
