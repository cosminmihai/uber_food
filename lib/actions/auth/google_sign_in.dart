part of auth_actions;

abstract class GoogleConnect //
    implements
        Built<GoogleConnect, GoogleConnectBuilder>,
        AppAction //
{
  factory GoogleConnect(ActionResult result) {
    return _$GoogleConnect((GoogleConnectBuilder b) {
      b.result = result;
    });
  }

  GoogleConnect._();

  ActionResult get result;
}

abstract class GoogleConnectSuccessful //
    implements
        Built<GoogleConnectSuccessful, GoogleConnectSuccessfulBuilder>,
        AppAction //
{
  factory GoogleConnectSuccessful(AppUser user) {
    return _$GoogleConnectSuccessful((GoogleConnectSuccessfulBuilder b) {
      b.user = user.toBuilder();
    });
  }

  GoogleConnectSuccessful._();

  AppUser get user;
}

abstract class GoogleConnectError //
    implements
        Built<GoogleConnectError, GoogleConnectErrorBuilder>,
        ErrorAction //
{
  factory GoogleConnectError(Object error) {
    return _$GoogleConnectError((GoogleConnectErrorBuilder b) => b.error = error);
  }

  GoogleConnectError._();

  @override
  Object get error;
}
