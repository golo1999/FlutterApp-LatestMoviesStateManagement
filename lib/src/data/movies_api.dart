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

  Future<void> createReview({required String uid, required int movieId, required String text}) async {
    final DocumentReference<Map<String, dynamic>> documentReference = _firestore.collection('reviews').doc();

    final Review review = Review(
      id: documentReference.id,
      uid: uid,
      movieId: movieId,
      text: text,
      createdAt: DateTime.now().toUtc(),
    );

    await documentReference.set(review.json);
  }

  Future<List<Review>> getReviews(int movieId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore //
        .collection('reviews')
        .where('movieID', isEqualTo: movieId)
        .get();

    final List<Review> list1 = [];

    _firestore //
        .collection('reviews')
        .where('movieId', isEqualTo: movieId)
        .snapshots()
        .forEach((QuerySnapshot<Map<String, dynamic>> element) {
      element.docs.asMap().forEach((int key, QueryDocumentSnapshot<Map<String, dynamic>> value) {
        print(element.docs[key]['text']);

        final Review rev = Review(
          id: element.docs[key]['id'].toString(),
          uid: element.docs[key]['uid'].toString(),
          movieId: movieId,
          text: element.docs[key]['text'].toString(),
        );
        list1.add(rev);

        print('review: ' + rev.text);

        print('list1');
        print(list1);
      });
    });
    //.listen((QuerySnapshot<Map<String, dynamic>> event) => print('snap size: ${event.size}'));

    // pana aici e bine

    final List<Review> reviewsList = snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> e) => e.data())
        .map((Map<String, dynamic> data) => Review.fromJson(data))
        .toList()
      ..sort((Review a, Review b) => b.createdAt.compareTo(a.createdAt));

    print(reviewsList);

    for (final Review review in reviewsList) {
      print('review from list:' + review.toString());
    }

    return reviewsList;
  }
}
