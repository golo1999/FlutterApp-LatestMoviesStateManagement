part of presentations;

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          //Navigator.pushNamed(context, loginRoute);

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
        }

        return GestureDetector(
          onTap: () {
            print('A');
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: secondaryColor,
              child: Text(
                // user.username[0].toUpperCase(),
                'A',
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
        );
      },
    );
  }
}
