import 'package:flutter/material.dart';
import 'package:flutter_cifo/structure/controllers/movies_controller.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MoviesController moviesController = Get.put(MoviesController());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await moviesController.getPopularMovieResponse();
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Obx(
          () => ListView.builder(
              itemCount:
                  /*(moviesController.popularMoviesResponse.value.results == null)
                      ? 0
                      : moviesController
                          .popularMoviesResponse.value.results!.length,*/
                  moviesController
                          .popularMoviesResponse.value.results?.length ??
                      0,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.DETAILS);
                  },
                  child: Card(
                    color: Colors.pink,
                    child: Text(moviesController
                        .popularMoviesResponse.value.results![index].title!),
                  ),
                );
              }),
        ));
  }
}
