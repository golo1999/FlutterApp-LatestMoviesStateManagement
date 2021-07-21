part of presentations;

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
