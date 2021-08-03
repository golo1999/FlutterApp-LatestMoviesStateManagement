part of presentations;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${action.error}'),
        ),
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: primaryColor,
          height: data.size.height,
          child: SafeArea(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: whiteColor,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: whiteColor,
                      ),
                      validator: (String? value) {
                        return (value == null || value.isEmpty)
                            ? 'Please enter your email.'
                            : (!value.contains('@'))
                                ? 'Please enter a valid mail.'
                                : null;
                      },
                      cursorColor: whiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: whiteColor,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      style: const TextStyle(
                        color: whiteColor,
                      ),
                      validator: (String? value) {
                        return (value == null || value.isEmpty)
                            ? 'Please enter your password.'
                            : (value.length < 6)
                                ? 'Please enter a longer password.'
                                : null;
                      },
                      cursorColor: whiteColor,
                    ),
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 32.0,
                          horizontal: 16.0,
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            if (!Form.of(context)!.validate()) {
                              return;
                            }

                            StoreProvider.of<AppState>(context).dispatch(RegisterUser(
                              _emailController.text.trim(),
                              _passwordController.text,
                              _onResult,
                            ));
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: whiteColor,
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: whiteColor,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
