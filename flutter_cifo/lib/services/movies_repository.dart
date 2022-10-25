import 'package:flutter_cifo/models/popular_response.dart';
import 'package:flutter_cifo/services/movies_api_repository.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  Future<PopularMovieResponse> popularMovies() async {
    http.Response bodyRes =
        await MoviesApiRepository().getReqResPopularMoivies();

    final body = bodyRes.body;

    print(body);

    PopularMovieResponse newPopularMovieResponse =
        PopularMovieResponse.fromJson(body);

    print(newPopularMovieResponse);
    return newPopularMovieResponse;
  }
}
