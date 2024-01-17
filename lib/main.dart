import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/di/di_setup.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_screen.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        create: (_) => getIt<MainViewModel>(),
        child: MainScreen(),
      ),
    );
  }
}
