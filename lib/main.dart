import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_screen.dart';
import 'package:flutter_image_search_app_ver1/ui/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(
          repository: PixabayRepository(),
        ),
        child: const MainScreen(),
      ),
    );
  }
}
