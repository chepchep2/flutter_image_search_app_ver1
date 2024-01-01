import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_repository.dart';

class MainViewModel {
  final repository = PixabayImageRepository();
  List<ImageItem> imageItems = [];
  bool isLoading = false;

  Future<void> searchImage(String query) async {
    imageItems = await repository.getImageItems(query);
  }
}
