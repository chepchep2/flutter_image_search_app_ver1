import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItem(String query) async {
    if (query == 'banana') {
      return [
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
          tags: '',
        ),
      ];
    } else {
      return [
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2019/09/21/09/07/banana-4493420_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2016/11/22/23/04/citrus-fruits-1851077_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2016/09/03/20/48/bananas-1642706_150.jpg",
          tags: '',
        ),
      ];
    }
  }
}
