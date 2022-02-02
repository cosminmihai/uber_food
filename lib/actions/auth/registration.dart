part of auth_actions;

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
