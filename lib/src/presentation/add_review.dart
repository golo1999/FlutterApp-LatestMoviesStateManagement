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
    final MediaQueryData data = MediaQuery.of(context);

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
        body: Container(
          color: secondaryColor,
          height: data.size.height,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _reviewController,
                  decoration: const InputDecoration(
                    hintText: 'Review',
                    hintStyle: TextStyle(
                      color: primaryColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    return (value == null || value.isEmpty)
                        ? 'The review should not be empty'
                        : (value.length < 3)
                            ? 'The review should be longer'
                            : null;
                  },
                ),
              ),
              Builder(
                builder: (BuildContext context) {
                  return OutlinedButton(
                    onPressed: () {
                      if (!Form.of(context)!.validate()) {
                        return;
                      }

                      StoreProvider.of<AppState>(context).dispatch(CreateReview(_reviewController.text.trim()));

                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: primaryColor,
                      ),
                    ),
                    child: const Text(
                      'Add review',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
