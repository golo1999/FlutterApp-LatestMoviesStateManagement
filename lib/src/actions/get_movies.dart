import 'package:latest_movies_state_management/src/models/movie.dart';

class GetMovies {}

class GetMoviesSuccessful {
  GetMoviesSuccessful(this.movieList);

  final List<Movie> movieList;
}

class GetMoviesError {
  GetMoviesError(this.error);

  final Object error;
}
