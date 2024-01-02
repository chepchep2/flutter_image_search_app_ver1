import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MainViewModel {
  final repository = PixabayRepository();

  List<ImageItem> imageItems = [];

  bool isLoading = false;

  Future<void> searchImageItems(String query) async {
    // isLoading = true;

    imageItems = await repository.getImageItems(query);

    // isLoading = false;
  }
}
