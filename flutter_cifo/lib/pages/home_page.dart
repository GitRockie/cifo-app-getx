import 'package:flutter/material.dart';

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
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
