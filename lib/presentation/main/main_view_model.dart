import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';
import 'package:flutter_image_search_app_ver1/domain/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/domain/repository/image_repository.dart';

class MainViewModel extends ChangeNotifier {
  final ImageRepository _repository = MockRepository();
  List<ImageItem> imageItems = [];

  Future<void> searchImage(String query) async {
    imageItems = await _repository.getImageItems(query);
    notifyListeners();
  }
}