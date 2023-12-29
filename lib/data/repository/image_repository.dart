import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class ImageRepository {
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
          tags: ''),
    ];
  }
}
