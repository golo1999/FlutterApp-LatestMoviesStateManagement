part of actions;

@freezed
class GetMovies with _$GetMovies implements AppAction {
  const factory GetMovies() = GetMoviesStart;

  const factory GetMovies.successful(List<Movie> moviesList) = GetMoviesSuccessful;

  @Implements(ErrorAction)
  const factory GetMovies.error(Object error, StackTrace stackTrace) = GetMoviesError;
}
