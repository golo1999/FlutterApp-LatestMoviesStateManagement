import 'package:latest_movies_state_management/src/actions/index.dart';
import 'package:latest_movies_state_management/src/data/index.dart';
import 'package:latest_movies_state_management/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  AppEpics({required MoviesAPI moviesAPI, required AuthAPI authAPI})
      : _moviesAPI = moviesAPI,
        _authAPI = authAPI;

  final MoviesAPI _moviesAPI;
  final AuthAPI _authAPI;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, GetMoviesStart>(_getMovies),
        TypedEpic<AppState, RegisterUserStart>(_registerUser),
      ],
    );
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetMoviesStart action) => _moviesAPI.getMovies())
        .map((List<Movie> moviesList) => GetMovies.successful(moviesList))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesError(error, stackTrace));
  }

  Stream<AppAction> _registerUser(Stream<RegisterUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((RegisterUserStart action) => _authAPI.registerUser(action.email, action.password))
        .map((AppUser user) => RegisterUser.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => RegisterUser.error(error, stackTrace));
  }
}
