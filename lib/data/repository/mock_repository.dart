import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class MockRepository {
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
          imageUrl:
              '"https://cdn.pixabay.com/photo/2016/11/29/02/05/audience-1866738_150.jpg",',
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/01/26/22/40/child-613199_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2014/10/14/20/24/soccer-488700_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2018/06/12/19/59/football-3471371_150.jpg",
          tags: ''),
    ];
  }
}
