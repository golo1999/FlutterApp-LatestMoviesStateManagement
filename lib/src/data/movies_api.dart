part of datas;

class MoviesAPI {
  const MoviesAPI({required FirebaseFirestore firestore, required Client client})
      : _firestore = firestore,
        _httpClient = client;

  final FirebaseFirestore _firestore;
  final Client _httpClient;

  Future<List<Movie>> getMovies() async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'yts.mx',
      pathSegments: <String>['api', 'v2', 'list_movies.json'],
    );

    final Response response = await _httpClient.get(url);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Map<String, dynamic> responseBody = jsonDecode(response.body) as Map<String, dynamic>;

    final Map<String, dynamic> responseBodyData = responseBody['data'] as Map<String, dynamic>;

    final List<dynamic> movieListFromAPI = responseBodyData['movies'] as List<dynamic>;

    final List<Movie> responseList = movieListFromAPI.map((dynamic json) => Movie.fromJson(json)).toList();

    return responseList;
  }

  // Future<void> createReview({required String uid, required int movieId, required String text}) async {
  //   final DocumentReference<Map<String, dynamic>> documentReference = _firestore.collection('reviews').doc();
  //
  //   final Review review = Review(
  //     id: documentReference.id,
  //     uid: uid,
  //     movieId: movieId,
  //     text: text,
  //     createdAt: DateTime.now().toUtc(),
  //   );
  //
  //   await documentReference.set(review.json);
  // }
}
