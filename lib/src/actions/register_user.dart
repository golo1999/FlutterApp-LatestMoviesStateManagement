part of actions;

@freezed
class RegisterUser with _$RegisterUser implements AppAction {
  const factory RegisterUser(String email, String password) = RegisterUserStart;

  const factory RegisterUser.successful(AppUser user) = RegisterUserSuccessful;

  @Implements(ErrorAction)
  const factory RegisterUser.error(Object error, StackTrace stackTrace) = RegisterUserError;
}
