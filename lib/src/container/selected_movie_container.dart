import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:latest_movies_state_management/src/models/app_state.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';
import 'package:redux/redux.dart';

class SelectedMovieContainer extends StatelessWidget {
  const SelectedMovieContainer({Key? key, required this.builder})
      : super(key: key);

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.movieList
              .firstWhere((Movie item) => item.id == store.state.selectedMovie);
        });
  }
}
