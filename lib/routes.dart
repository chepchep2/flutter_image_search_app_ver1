

import 'package:flutter_image_search_app_ver1/data/di/disetup.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_screen.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);
