part of actions;

@freezed
class SignOutUser with _$SignOutUser implements AppAction {
  const factory SignOutUser() = SignOutUserStart;

  const factory SignOutUser.successful() = SignOutUserSuccessful;

  @Implements(ErrorAction)
  const factory SignOutUser.error(Object error, StackTrace stackTrace) = SignOutUserError;
}
