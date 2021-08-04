part of containers;

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Review>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.reviewsList.toList()
        ..sort((Review a, Review b) {
          return b.createdAt.compareTo(a.createdAt);
        }),
    );
  }
}
