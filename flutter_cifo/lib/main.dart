import 'package:flutter/material.dart';

import 'package:flutter_cifo/routes/app_pages.dart';
import 'package:flutter_cifo/theme/theme.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme,
      getPages: AppPages.routes,
      initialRoute: Routes.HOME,
    );
  }
}
