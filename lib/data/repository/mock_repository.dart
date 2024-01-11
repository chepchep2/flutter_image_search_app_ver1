import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItem(String query) async {
    return [
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
          tags: ''),
    ];
  }
}
