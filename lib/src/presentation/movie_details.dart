part of presentations;

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    setTransparentStatusBar();

    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return SelectedMovieContainer(
          builder: (BuildContext context, Movie movie) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: transparentColor,
              ),
              body: Container(
                width: data.size.width,
                height: data.size.height,
                color: primaryColor,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      GestureDetector(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.zero,
                            bottom: Radius.circular(
                              data.size.width * 0.25,
                            ),
                          ),
                          child: Image.network(
                            movie.mediumCoverImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                        onTap: () {
                          StoreProvider.of<AppState>(context)
                            ..dispatch(SetSelectedMovie(movie.id))
                            ..dispatch(const GetReviews());
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return const MovieImage();
                              },
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: data.size.width * 0.025,
                          top: data.size.width * 0.05,
                          right: data.size.width * 0.025,
                          bottom: data.size.width * 0.015,
                        ),
                        child: Text(
                          movie.titleLong,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: data.size.width * 0.075,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: data.size.width * 0.015,
                          horizontal: data.size.width * 0.025,
                        ),
                        child: Text(
                          movie.showGenres().toString(),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: data.size.width * 0.05,
                            fontStyle: FontStyle.italic,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: data.size.width * 0.015,
                          horizontal: data.size.width * 0.025,
                        ),
                        child: Text(
                          movie.showAvailableQualities(),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: data.size.width * 0.05,
                            fontStyle: FontStyle.italic,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: data.size.width * 0.015,
                          horizontal: data.size.width * 0.025,
                        ),
                        child: Row(
                          children: <Widget>[
                            RatingBarIndicator(
                              itemBuilder: (BuildContext context, int index) => const Icon(
                                Icons.star,
                                color: secondaryColor,
                              ),
                              unratedColor: starNotRatedColor,
                              rating: movie.rating / 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 10,
                              ),
                              child: Text(
                                movie.rating.toString() + '/' + Movie.maxRating.toString(),
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: data.size.width * 0.05,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: data.size.width * 0.015,
                          horizontal: data.size.width * 0.025,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              'Synopsis',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: data.size.width * 0.075,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 0,
                              ),
                              child: Text(
                                movie.synopsis,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: data.size.width * 0.04,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 0,
                              ),
                              child: OutlinedButton(
                                onPressed: () async {
                                  await Navigator.pushNamed(context, user == null ? loginRoute : addReviewRoute);

                                  StoreProvider.of<AppState>(context).dispatch(const GetReviews());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Add review',
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: data.size.width * 0.05,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            UsersContainer(
                              builder: (BuildContext context, Map<String, AppUser> usersMap) {
                                return ReviewsContainer(
                                  builder: (BuildContext context, List<Review> reviewsList) {
                                    final DateFormat format = DateFormat.yMMMMEEEEd().add_Hms();

                                    if (reviewsList.isEmpty) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 16.0,
                                          horizontal: 0,
                                        ),
                                        child: Text(
                                          'No reviews available',
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: data.size.width * 0.075,
                                          ),
                                        ),
                                      );
                                    }

                                    return Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Text(
                                            'Reviews',
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: data.size.width * 0.075,
                                            ),
                                          ),
                                          ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            padding: EdgeInsets.zero,
                                            itemBuilder: (BuildContext context, int index) {
                                              final Review review = reviewsList[index];

                                              final AppUser? user = usersMap[review.uid];

                                              return ListTile(
                                                leading: user != null ? UserAvatar(user: user) : null,
                                                title: Text(
                                                  review.text,
                                                  style: const TextStyle(
                                                    color: whiteColor,
                                                  ),
                                                ),
                                                subtitle: Text(
                                                  format.format(review.createdAt.toLocal()),
                                                  style: const TextStyle(
                                                    color: whiteColor,
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: reviewsList.length,
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              extendBodyBehindAppBar: true,
            );
          },
        );
      },
    );
  }
}
