import 'dart:convert';

import 'package:http/http.dart';
import 'package:latest_movies_state_management/src/models/movie.dart';

class MoviesAPI {
  const MoviesAPI({required String apiURL, required Client client})
      : _apiURL = apiURL,
        _httpClient = client;

  final String _apiURL;
  final Client _httpClient;

  Future<List<Movie>> getMovies() async {
    final Uri url = Uri.parse('$_apiURL/list_movies.json');
    final Response response = await _httpClient.get(url);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Map<dynamic, dynamic> responseBody =
        jsonDecode(response.body) as Map<dynamic, dynamic>;
    final Map<dynamic, dynamic> responseBodyData =
        responseBody['data'] as Map<dynamic, dynamic>;
    final List<dynamic> moviesListFromAPI =
        responseBodyData['movies'] as List<dynamic>;
    final List<Movie> result =
        moviesListFromAPI.map((dynamic json) => Movie.fromJson(json)).toList();

    return result;
  }
}
