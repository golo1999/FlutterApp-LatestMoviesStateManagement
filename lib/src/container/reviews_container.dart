part of containers;

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Review>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.reviewsList.asList(),
    );
  }
}
