import 'package:flutter_cifo/pages/home_page.dart';
import 'package:flutter_cifo/routes/app_routes.dart';
import 'package:flutter_cifo/structure/bindings/movies_binding.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomePage(),
        binding: MovieBinding())
  ];
}
