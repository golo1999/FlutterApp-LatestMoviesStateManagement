part of presentations;

class AddReviewPage extends StatefulWidget {
  const AddReviewPage({Key? key}) : super(key: key);

  @override
  _AddReviewPageState createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  final TextEditingController _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add review',
            style: TextStyle(
              color: whiteColor,
            ),
          ),
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: <Widget>[
            TextFormField(
              controller: _reviewController,
              validator: (String? value) {
                return (value == null || value.isEmpty)
                    ? 'The review should not be empty'
                    : (value.length < 3)
                        ? 'The review should be longer'
                        : null;
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return OutlinedButton(
                  onPressed: () {
                    if (!Form.of(context)!.validate()) {
                      return;
                    }

                    StoreProvider.of<AppState>(context).dispatch(CreateReview(
                      _reviewController.text.trim(),
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
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
