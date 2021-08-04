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
    TypedReducer<AppState, GetReviews>(_getReviews),
    TypedReducer<AppState, GetReviewsSuccessful>(_getReviewsSuccessful),
    TypedReducer<AppState, GetReviewsError>(_getReviewsError),
    TypedReducer<AppState, GetUsers>(_getUsers),
    TypedReducer<AppState, GetUsersSuccessful>(_getUsersSuccessful),
    TypedReducer<AppState, GetUsersError>(_getUsersError),
    TypedReducer<AppState, SetSelectedMovie>(_setSelectedMovie),
    TypedReducer<AppState, InitializeApp>(_initializeApp),
    TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),
    TypedReducer<AppState, InitializeAppError>(_initializeAppError),
    TypedReducer<AppState, RegisterUser>(_registerUser),
    TypedReducer<AppState, RegisterUserSuccessful>(_registerUserSuccessful),
    TypedReducer<AppState, RegisterUserError>(_registerUserError),
    TypedReducer<AppState, SignOutUser>(_signOutUser),
    TypedReducer<AppState, SignOutUserSuccessful>(_signOutUserSuccessful),
    TypedReducer<AppState, SignOutUserError>(_signOutUserError),
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
      builder.moviesList = ListBuilder<Movie>(action.moviesList);
    },
  );
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _getReviews(AppState state, GetReviews action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _getReviewsSuccessful(AppState state, GetReviewsSuccessful action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.reviewsList //
        ..clear()
        ..addAll(action.reviewsList);
    },
  );
}

AppState _getReviewsError(AppState state, GetReviewsError action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _getUsers(AppState state, GetUsers action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _getUsersSuccessful(AppState state, GetUsersSuccessful action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.usersList.clear();

      for (final AppUser user in action.usersList) {
        print('user:' + user.uid);
        builder.usersList[user.uid] = user;
      }
    },
  );
}

AppState _getUsersError(AppState state, GetUsersError action) {
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

AppState _initializeApp(AppState state, InitializeApp action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.user = action.user?.toBuilder();
    },
  );
}

AppState _initializeAppError(AppState state, InitializeAppError action) {
  return state.rebuild(
    (AppStateBuilder builder) {},
  );
}

AppState _registerUser(AppState state, RegisterUser action) {
  return state.rebuild((AppStateBuilder builder) {});
}

AppState _registerUserSuccessful(AppState state, RegisterUserSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.user = action.user.toBuilder();
  });
}

AppState _registerUserError(AppState state, RegisterUserError action) {
  return state.rebuild((AppStateBuilder builder) {});
}

AppState _signOutUser(AppState state, SignOutUser action) {
  return state.rebuild((AppStateBuilder builder) {});
}

AppState _signOutUserSuccessful(AppState state, SignOutUserSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.user = null;
  });
}

AppState _signOutUserError(AppState state, SignOutUserError action) {
  return state.rebuild((AppStateBuilder builder) {});
}
