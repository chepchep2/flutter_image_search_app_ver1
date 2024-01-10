import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItem(String query) async {
    return [
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
          tags: '',
          id: 1),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
          tags: '',
          id: 2),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
          tags: '',
          id: 3),
    ];
  }
}
