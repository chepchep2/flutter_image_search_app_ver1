import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
        imageUrl:
            'https://static.wbsc.org/uploads/federations/0/cms/photos/338564b4-122c-78a8-63c0-2bb8d34a88ce.jpg',
        tags: '',
      ),
      ImageItem(
        imageUrl:
            'https://img.mlbstatic.com/mlb-images/image/upload/t_16x9/t_w1024/mlb/rwddj1rp5oirwwdqgfdl',
        tags: '',
      ),
      ImageItem(
        imageUrl:
            'https://www.sportcal.com/wp-content/uploads/sites/32/2023/06/main649467adea184.jpg',
        tags: '',
      ),
    ];
  }
}
