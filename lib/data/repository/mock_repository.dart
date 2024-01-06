import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class MockRepository {
  Future<List<ImageItem>> getImageResult(String query) async {
    if (query == 'apple') {
      return [
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
          tags: '',
        ),
      ];
    } else {
      return [
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2014/12/27/15/40/office-581131_150.jpg",
            tags: ''),
      ];
    }
  }
}
