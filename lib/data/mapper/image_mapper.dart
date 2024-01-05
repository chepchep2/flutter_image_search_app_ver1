import 'package:flutter_image_search_app_ver1/data/dto/pixabay_dto.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

extension DtoToImage on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      imageUrl: previewURL ??
          'https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpg',
      tags: tags ?? '',
    );
  }
}
