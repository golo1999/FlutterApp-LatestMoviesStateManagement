import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:latest_movies_state_management/src/actions/index.dart';
import 'package:latest_movies_state_management/src/data/movies_api.dart';
import 'package:latest_movies_state_management/src/epics/app_epics.dart';
import 'package:latest_movies_state_management/src/models/app_data.dart';
import 'package:latest_movies_state_management/src/models/index.dart';
import 'package:latest_movies_state_management/src/presentation/index.dart';
import 'package:latest_movies_state_management/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final Client client = Client();

  final MoviesAPI moviesAPI = MoviesAPI(client: client);

  final AppEpics appEpics = AppEpics(moviesAPI);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(const GetMovies());

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
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          detailsRoute: (BuildContext context) {
            return const MovieDetails();
          },
          showImageRoute: (BuildContext context) {
            return const MovieImage();
          },
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
