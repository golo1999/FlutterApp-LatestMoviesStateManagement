import 'package:built_collection/built_collection.dart';
import 'package:latest_movies_state_management/src/actions/get_movies.dart';
import 'package:latest_movies_state_management/src/actions/set.dart';
import 'package:latest_movies_state_management/src/models/app_state.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    return state;
  },
  //TypedReducer<AppState, GetMovies>(_getMovies),
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  //TypedReducer<AppState, GetMoviesError>(_getMoviesError),
  TypedReducer<AppState, SetSelectedMovie>(_setSelectedMovie),
]);

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.movieList = ListBuilder<Movie>(action.movieList);
  });
}

AppState _setSelectedMovie(AppState state, SetSelectedMovie action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.selectedMovie = action.movieId;
  });
}
