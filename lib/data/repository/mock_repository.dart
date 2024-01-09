import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageResult(String query) async {
    if (query == 'flutter') {
      return [
        ImageItem(
          imageUrl:
              'https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png',
          tags: '',
        ),
        ImageItem(
          imageUrl: 'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg',
          tags: '',
        ),
        ImageItem(
          imageUrl:
              'https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpg',
          tags: '',
        ),
      ];
    } else {
      return [
        ImageItem(
          imageUrl:
          'https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png',
          tags: '',
        ),
        ImageItem(
          imageUrl: 'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg',
          tags: '',
        ),
        ImageItem(
          imageUrl:
          'https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpg',
          tags: '',
        ),
      ];
    }
  }
}
