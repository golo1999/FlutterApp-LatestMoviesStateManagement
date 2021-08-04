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
        TypedEpic<AppState, CreateReviewStart>(_createReview),
        TypedEpic<AppState, GetMoviesStart>(_getMovies),
        TypedEpic<AppState, GetReviewsStart>(_getReviews),
        TypedEpic<AppState, GetUsersStart>(_getAllUsers),
        TypedEpic<AppState, InitializeAppStart>(_initializeApp),
        TypedEpic<AppState, RegisterUserStart>(_registerUser),
        TypedEpic<AppState, SignOutUserStart>(_signOutUser),
      ],
    );
  }

  Stream<AppAction> _createReview(Stream<CreateReviewStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((CreateReviewStart action) {
          return _moviesAPI.createReview(
            uid: store.state.user!.uid,
            movieId: store.state.selectedMovieId!,
            text: action.text,
          );
        })
        .map((_) => const CreateReview.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateReview.error(error, stackTrace));
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetMoviesStart action) => Stream<void>.value(null)
            .asyncMap((_) => _moviesAPI.getMovies())
            .map((List<Movie> moviesList) => GetMovies.successful(moviesList))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesError(error, stackTrace)));
  }

  Stream<AppAction> _getReviews(Stream<GetReviewsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetReviewsStart action) => Stream<void>.value(null)
                .asyncMap((_) => _moviesAPI.getReviews(store.state.selectedMovieId!))
                .expand((List<Review> reviewsList) {
              return <AppAction>[
                GetReviewsSuccessful(reviewsList),
              ];
            }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetReviews.error(error, stackTrace)));
  }

  Stream<AppAction> _getAllUsers(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUsersStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authAPI.getAllUsers(action.uidList))
            .map((List<AppUser> usersList) => GetUsers.successful(usersList))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace)));
  }

  Stream<AppAction> _initializeApp(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((InitializeAppStart action) => _authAPI.getCurrentUser())
        .map((AppUser? user) => InitializeApp.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace));
  }

  Stream<AppAction> _registerUser(Stream<RegisterUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RegisterUserStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authAPI.registerUser(action.email, action.password))
            .map((AppUser user) => RegisterUser.successful(user))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => RegisterUser.error(error, stackTrace))
            .doOnData(action.result));
  }

  Stream<AppAction> _signOutUser(Stream<SignOutUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((SignOutUserStart action) => _authAPI.signOutCurrentUser())
        .map((_) => const SignOutUser.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOutUser.error(error, stackTrace));
  }
}
