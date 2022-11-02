import 'package:flutter_cifo/models/popular_response.dart';

import 'package:flutter_cifo/services/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController {
  Rx<PopularMovieResponse> popularMoviesResponse =
      PopularMovieResponse(results: []).obs;

  Future<void> getPopularMovieResponse() async {
    final newPopularMoviesResponse = await MovieRepository().popularMovies();
    print(popularMoviesResponse.value);
    popularMoviesResponse.value = newPopularMoviesResponse;
  }
}
