import 'dart:convert';

import 'package:http/http.dart';
import 'package:latest_movies_state_management/src/models/index.dart';

class MoviesAPI {
  const MoviesAPI({required Client client}) : _httpClient = client;

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
}
