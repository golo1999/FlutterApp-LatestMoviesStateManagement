part of actions;

@freezed
class GetUsers with _$GetUsers implements AppAction {
  const factory GetUsers(List<String> uidList) = GetUsersStart;

  const factory GetUsers.successful(List<AppUser> usersList) = GetUsersSuccessful;

  @Implements(ErrorAction)
  const factory GetUsers.error(Object error, StackTrace stackTrace) = GetUsersError;
}
