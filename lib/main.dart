import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:latest_movies_state_management/src/actions/get_movies.dart';
import 'package:latest_movies_state_management/src/data/movies_api.dart';
import 'package:latest_movies_state_management/src/middleware/middleware.dart';
import 'package:latest_movies_state_management/src/models/app_state.dart';
import 'package:latest_movies_state_management/src/presentation/home_page.dart';
import 'package:latest_movies_state_management/src/presentation/movie_details.dart';
import 'package:latest_movies_state_management/src/presentation/movie_image.dart';
import 'package:latest_movies_state_management/src/reducer/reducer.dart';
import 'package:redux/redux.dart';

void main() {
  const String apiURL = 'https://yts.mx/api/v2';
  final Client client = Client();
  final MoviesAPI moviesAPI = MoviesAPI(apiURL: apiURL, client: client);
  final MoviesMiddleware moviesMiddleware =
      MoviesMiddleware(moviesAPI: moviesAPI);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: moviesMiddleware.middleware,
  );

  store.dispatch(GetMovies());

  runApp(YtsMovies(store: store));
}

class YtsMovies extends StatelessWidget {
  const YtsMovies({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          '/details': (BuildContext context) {
            return const MovieDetails();
          },
          'show_image': (BuildContext context) {
            return const MovieImage();
          }
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
