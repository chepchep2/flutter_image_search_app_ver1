import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';



class MockImageRepository {
  Future<List<ImageItem>> getImageItems(String query) async {
    if (query == 'flutter') {
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
    } else {
      return [
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2022/04/16/06/49/arrow-7135821_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2022/04/16/06/50/darts-7135826_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2017/01/02/18/40/target-1947630_150.jpg",
            tags: ''),
      ];
    }
  }
}
