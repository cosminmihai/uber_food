part of auth_actions;

const String _kSignInWithGooglePendingId = 'SignInWithGoogle';

@freezed
class SignInWithGoogle with _$SignInWithGoogle implements AppAction {
  @Implements<ActionStart>()
  const factory SignInWithGoogle.start({
    required ActionResult result,
    @Default(_kSignInWithGooglePendingId) String pendingId,
  }) = SignInWithGoogleStart;

  @Implements<ActionDone>()
  const factory SignInWithGoogle.successful(
    AppUser user, [
    @Default(_kSignInWithGooglePendingId) String pendingId,
  ]) = SignInWithGoogleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SignInWithGoogle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSignInWithGooglePendingId) String pendingId,
  ]) = SignInWithGoogleError;

  static String get pendingKey => _kSignInWithGooglePendingId;
}
