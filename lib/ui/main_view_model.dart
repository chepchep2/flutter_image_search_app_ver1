import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/pixabay_repository.dart';

class MainViewModel extends ChangeNotifier {
  // final repository = PixabayRepository();
  final ImageRepository _repository;

  MainViewModel({
    required ImageRepository repository,
}) : _repository = repository;

  List<ImageItem> _imageItems = [];

  bool _isLoading = false;
  List<ImageItem> get imageItems => List.unmodifiable(_imageItems);
  bool get isLoading => _isLoading;

  Future<void> searchImages(String query) async {
    _isLoading = true;
    notifyListeners();

    _imageItems = (await _repository.getImageItems(query)).toList();

    _isLoading = false;
    notifyListeners();
  }
}