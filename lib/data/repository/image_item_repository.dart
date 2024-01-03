import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class MockRepository {
  Future<List<ImageItem>> getImageItems(String query) async {
    await Future.delayed(Duration(seconds: 1));

    if (query == 'flutter') {
      return [
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
          "https://cdn.pixabay.com/photo/2015/04/23/22/05/hummingbird-736890_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
          "https://cdn.pixabay.com/photo/2017/08/07/22/15/flag-2608475_150.jpg",
          tags: '',
        ),
        ImageItem(
          imageUrl:
          "https://cdn.pixabay.com/photo/2017/04/25/21/32/wild-goose-2260869_150.jpg",
          tags: '',
        ),
      ];
    } else {
      return [
        ImageItem(
            imageUrl:
            "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
            "https://cdn.pixabay.com/photo/2019/09/21/09/07/banana-4493420_150.jpg",
            tags: ''),
      ];
    }
  }
}
