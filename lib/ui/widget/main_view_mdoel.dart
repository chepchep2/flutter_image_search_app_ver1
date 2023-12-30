import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MainViewModel {
  final repository = PixabayRepository();

  List<ImageItem> imageItems = [];

  Future<void> searchImage(String query) async {
    imageItems = await repository.getImageItems(query);

  }
}