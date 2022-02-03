part of auth_actions;

@freezed
class Logout with _$Logout implements AppAction {
  const factory Logout() = Logout$;

  const factory Logout.successful() = LogoutSuccessful;

  @Implements<ErrorAction>()
  const factory Logout.error(Object error, StackTrace stackTrace) = LogoutError;
}
