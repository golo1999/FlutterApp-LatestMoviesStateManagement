part of presentations;

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key, this.user}) : super(key: key);

  final AppUser? user;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        final AppUser? currentUser = this.user ?? user;

        if (currentUser == null) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, loginRoute);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: primaryColor,
                ),
                backgroundColor: whiteColor,
              ),
            ),
          );
        } else {
          return GestureDetector(
            onTap: () {
              StoreProvider.of<AppState>(context).dispatch(
                const SignOutUser(),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: whiteColor,
                child: Text(
                  currentUser.username[0].toUpperCase(),
                  style: const TextStyle(color: primaryColor),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
