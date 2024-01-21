import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm4pqhcVquUwE0UNxi1mua3ur1vDXF01fORXgfP7it&s',
        tags: '',
      ),
      ImageItem(
        imageUrl:
        'https://img7.yna.co.kr/photo/ap/2021/03/01/PAP20210301098901055_P2.jpg',
        tags: '',
      ),
      ImageItem(
        imageUrl:
        'https://i.namu.wiki/i/5h1qXVYFsow05ENS00jHrjB_Tqldw7BNekMKeLiXmPAeKUmNpqH-LYvaohIeoKpl5u1sjpyFrwcHiYufGfIH2g.webp',
        tags: '',
      ),
      ImageItem(
        imageUrl:
        'https://dimg.donga.com/wps/SPORTS/IMAGE/2022/12/16/117027791.1.jpg',
        tags: '',
      ),
    ];
  }
}
