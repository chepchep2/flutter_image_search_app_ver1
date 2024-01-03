import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_item_repository.dart';
import 'package:provider/provider.dart';

class MainViewModel extends ChangeNotifier {
  final repository = PixabayRepository();

  List<ImageItem> imageItems = [];

  Future<void> searchItems(String query) async {
    imageItems = await repository.getImageItems(query);
    notifyListeners();
  }
}
