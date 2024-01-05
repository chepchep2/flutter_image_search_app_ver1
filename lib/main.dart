import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/di/di_setup.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository_imple.dart';
import 'package:flutter_image_search_app_ver1/routes/routes.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_screen.dart';
import 'package:flutter_image_search_app_ver1/ui/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  diSetup();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
