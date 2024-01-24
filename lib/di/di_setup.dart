import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageRepository>(PixabayRepository());
  
  getIt.registerFactory<MainViewModel>(() => MainViewModel(repository: getIt<ImageRepository>()));
}