import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latest_movies_state_management/src/container/selected_movie_container.dart';
import 'package:latest_movies_state_management/src/models/app_data.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setTransparentStatusBar();

    return SelectedMovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          body: Image.network(
            movie.largeCoverImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
