import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItem(String query) async {
    return [
      const ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
        tags: '',
      ),
      const ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2015/08/20/20/07/cereal-898073_150.jpg",
        tags: '',
      ),
      const ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/01/03/17/59/bananas-1119790_150.jpg",
        tags: '',
      ),
    ];
  }
}
