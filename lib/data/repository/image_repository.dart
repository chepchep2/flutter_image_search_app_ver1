import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class MockRepository {
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2014/06/20/10/44/softball-372979_150.jpg",
        tags: '',
      ),
      ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2020/08/03/17/22/stadium-5460564_150.jpg",
        tags: '',
      ),
      ImageItem(
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/11/22/22/17/action-1850887_150.jpg",
        tags: '',
      ),
    ];
  }
}
