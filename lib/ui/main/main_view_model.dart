import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';

class MainViewModel extends ChangeNotifier {
  final ImageRepository repository = MockRepository();

  List<ImageItem> imageItems = [];

  Future<void> searchImage(String query) async {
    imageItems = await repository.getImageItem(query);
    notifyListeners();
  }
}