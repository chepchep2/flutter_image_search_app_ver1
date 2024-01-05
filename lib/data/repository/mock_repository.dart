import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    if (query == 'soccer') {
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
    } else {
      return [
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2013/08/10/02/19/girl-171207_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2017/08/06/14/03/basketball-2592790_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2016/03/17/14/31/basketball-1263000_150.jpg",
            tags: ''),
      ];
    }
  }
}
