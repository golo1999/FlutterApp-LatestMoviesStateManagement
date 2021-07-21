part of containers;

class SelectedMovieContainer extends StatelessWidget {
  const SelectedMovieContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.movieList.firstWhere((Movie item) => item.id == store.state.selectedMovieId);
      },
    );
  }
}
