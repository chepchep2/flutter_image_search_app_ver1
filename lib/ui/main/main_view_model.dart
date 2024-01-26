import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_respository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository_impl.dart';

class MainViewModel extends ChangeNotifier {
  final ImageRepository _repository;

  List<ImageItem> imageItems = [];
  bool isLoading = false;

  MainViewModel({required ImageRepository repository})
      : _repository = repository;

  Future<void> searchImages(String query) async {
    isLoading = true;
    notifyListeners();

    imageItems = await _repository.getImageItems(query);

    isLoading = false;
    notifyListeners();
  }
}
