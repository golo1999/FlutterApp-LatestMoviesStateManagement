import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:latest_movies_state_management/src/models/app_state.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';
import 'package:redux/redux.dart';

class MoviesContainer extends StatelessWidget {
  const MoviesContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Movie>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Movie>>(
      converter: (Store<AppState> store) => store.state.movieList.asList(),
      builder: builder,
    );
  }
}
