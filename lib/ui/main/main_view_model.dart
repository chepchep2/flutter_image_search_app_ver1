import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository_impl.dart';

class MainViewModel extends ChangeNotifier {
  // final repository = MockRepository();
  final ImageRepository _repository;
  List<ImageItem> imageItems = [];

  MainViewModel({
    required ImageRepository repository,
  }) : _repository = repository;

  Future<void> searchImage(String query) async {
    imageItems = await _repository.getImageItem(query);
    notifyListeners();
  }
}
