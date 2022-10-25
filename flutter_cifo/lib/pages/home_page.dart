import 'package:flutter/material.dart';
import 'package:flutter_cifo/services/movies_api_repository.dart';

import '../services/movies_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MovieRepository().popularMovies();
        },
      ),
    );
  }
}
