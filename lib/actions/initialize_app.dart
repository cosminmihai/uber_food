part of actions;

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
        AppAction,
        UserAction //
{
  factory InitializeAppSuccessful(AppUser? user) {
    return _$InitializeAppSuccessful((InitializeAppSuccessfulBuilder b) {
      b.user = user?.toBuilder();
    });
  }

  InitializeAppSuccessful._();

  @override
  AppUser? get user;
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
