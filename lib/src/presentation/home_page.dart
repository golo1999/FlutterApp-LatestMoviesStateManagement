import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:latest_movies_state_management/src/actions/set.dart';
import 'package:latest_movies_state_management/src/container/movies_container.dart';
import 'package:latest_movies_state_management/src/models/app_data.dart';
import 'package:latest_movies_state_management/src/models/app_state.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoviesContainer(
      builder: (BuildContext context, List<Movie> moviesList) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              applicationTitle,
              style: TextStyle(
                color: whiteColor,
              ),
            ),
            backgroundColor: primaryColor,
            centerTitle: true,
          ),
          body: MoviesContainer(
            builder: (BuildContext context, List<Movie> moviesList) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .69,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = moviesList[index];
                  return GestureDetector(
                    child: GridTile(
                      child: Image.network(
                        movie.largeCoverImage,
                        fit: BoxFit.fill,
                      ),
                      footer: GridTileBar(
                        backgroundColor: Colors.black38,
                        title: Text(
                          movie.title,
                        ),
                      ),
                    ),
                    onTap: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(SetSelectedMovie(movie.id));
                      Navigator.pushNamed(context, '/details');
                    },
                  );
                },
                itemCount: moviesList.length,
              );
              // return ListView.builder(
              //   itemCount: moviesList.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     final Movie movie = moviesList[index];
              //
              //     return ListTile(
              //       title: Text(movie.titleLong),
              //     );
              //   },
              // );
            },
          ),
        );
      },
    );
  }
}
