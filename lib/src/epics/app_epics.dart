import 'package:latest_movies_state_management/src/actions/index.dart';
import 'package:latest_movies_state_management/src/data/movies_api.dart';
import 'package:latest_movies_state_management/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  AppEpics(this._moviesAPI);

  final MoviesAPI _moviesAPI;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, GetMoviesStart>(_getMovies),
      ],
    );
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetMoviesStart action) => _moviesAPI.getMovies())
        .map((List<Movie> moviesList) => GetMovies.successful(moviesList))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesError(error, stackTrace));
  }
}
