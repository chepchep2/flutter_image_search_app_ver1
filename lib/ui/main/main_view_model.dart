import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';

class MainViewModel extends ChangeNotifier {
  final repository = MockRepository();

  List<ImageItem> imageItems = [];

  bool isLoading = false;

  Future<void> searchImage(String query) async {
    isLoading = true;
    notifyListeners();

    imageItems = await repository.getImageItem(query);

    isLoading = false;
    notifyListeners();
  }
}