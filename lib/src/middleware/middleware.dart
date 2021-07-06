import 'package:latest_movies_state_management/src/actions/get_movies.dart';
import 'package:latest_movies_state_management/src/data/movies_api.dart';
import 'package:latest_movies_state_management/src/models/app_state.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';
import 'package:redux/redux.dart';

class MoviesMiddleware {
  const MoviesMiddleware({required MoviesAPI moviesAPI})
      : _moviesAPI = moviesAPI;

  final MoviesAPI _moviesAPI;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMovies>(_getMovies),
    ];
  }

  Future<void> _getMovies(
      Store<AppState> store, GetMovies action, NextDispatcher next) async {
    next(action);

    try {
      final List<Movie> movieList = await _moviesAPI.getMovies();
      store.dispatch(GetMoviesSuccessful(movieList));
    } catch (error) {
      store.dispatch(GetMoviesError(error));
    }
  }
}
