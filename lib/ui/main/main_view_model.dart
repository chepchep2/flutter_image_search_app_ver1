import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository_impl.dart';

class MainViewModel extends ChangeNotifier {
  ImageRepository _repository = PixabayRepositoryImpl();

  List<ImageItem> imageItems = [];

  bool isLoading = false;

  Future<void> searchImage(String query) async {
    isLoading = true;
    notifyListeners();

    imageItems = await _repository.getImageItems(query);

    isLoading = false;
    notifyListeners();
  }
}