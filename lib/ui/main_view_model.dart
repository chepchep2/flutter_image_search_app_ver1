import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository_impl.dart';

class MainViewModel extends ChangeNotifier{
  // final repository = MockRepository();
  // final repository = PixabayRepositoryImpl();
  final ImageRepository _repository;

  MainViewModel({
    required ImageRepository repository,
}) : _repository = repository;

  List<ImageItem> imageItems = [];

  bool isLoading = false;

  Future<void> searchImages(String query) async {
    isLoading = true;
    notifyListeners();

    imageItems = (await _repository.getImageResult(query)).toList();

    isLoading = false;
    notifyListeners();
  }
}