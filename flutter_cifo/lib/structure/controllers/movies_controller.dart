import 'package:flutter_cifo/models/popular_response.dart';

import 'package:flutter_cifo/services/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController {
  Rx<PopularMovieResponse> popularMoviesResponse = PopularMovieResponse().obs;

  Future<void> getPopularMovieResponse() async {
    final newPopularMoviesResponse = await MovieRepository().popularMovies();
    popularMoviesResponse.value = newPopularMoviesResponse;
  }
}
