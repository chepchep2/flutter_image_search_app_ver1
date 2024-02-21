import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItem(String query) async {
    if (query == 'baseball') {
      return [
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2014/06/20/10/44/softball-372979_150.jpg",
          tags: 'baseball',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2016/05/22/01/38/hit-1407826_150.jpg",
          tags: 'baseball',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2015/12/13/14/49/baseball-1091211_150.jpg",
          tags: 'baseball',
        ),
      ];
    } else {
      return [
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2019/07/22/17/01/soccer-4355589_150.jpg",
          tags: 'soccer',
        ),
        ImageItem(
          imageUrl:
              "https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_150.jpg",
          tags: 'soccer',
        ),
      ];
    }
  }
}
