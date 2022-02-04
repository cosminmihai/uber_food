part of actions;

@freezed
class InitializeApp with _$InitializeApp implements AppAction {
  const factory InitializeApp() = InitializeApp$;

  @Implements<UserAction>()
  const factory InitializeApp.successful(AppUser? user) = InitializeAppSuccessful;

  @Implements<ErrorAction>()
  const factory InitializeApp.error(Object error, StackTrace stackTrace) = InitializeAppError;
}
