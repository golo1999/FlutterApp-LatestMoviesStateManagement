import 'package:built_collection/built_collection.dart';
import 'package:latest_movies_state_management/src/actions/index.dart';
import 'package:latest_movies_state_management/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(
  <Reducer<AppState>>[
    (AppState state, dynamic action) {
      print(action);
      return state;
    },
    TypedReducer<AppState, GetMovies>(_getMovies),
    TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
    TypedReducer<AppState, GetMoviesError>(_getMoviesError),
    TypedReducer<AppState, SetSelectedMovie>(_setSelectedMovie),
  ],
);

AppState _getMovies(AppState state, GetMovies action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.movieList = ListBuilder<Movie>(action.moviesList);
    },
  );
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _setSelectedMovie(AppState state, SetSelectedMovie action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.selectedMovieId = action.movieId;
    },
  );
}
