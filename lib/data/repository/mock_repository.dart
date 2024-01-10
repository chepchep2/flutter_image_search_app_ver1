import 'package:flutter_image_search_app_ver1/domain/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/domain/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      const ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
        tags: '',
      ),
      const ImageItem(
        imageUrl:
        "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
        tags: '',
      ),
      const ImageItem(
        imageUrl:
        "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
        tags: '',
      ),
    ];
  }
}
