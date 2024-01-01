import 'package:flutter_image_search_app_ver1/data/dto/pixabay_dto.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

extension DtoToModel on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      imageUrl: previewURL ??
          'https://library.sportingnews.com/styles/crop_style_16_9_desktop/s3/2021-10/mlb-logo-072015-getty-ftrjpg_rdbcaj9vcazb1uszd8i5sr9t5.jpg?itok=Ag5JCDxg',
      tags: tags ?? '',
    );
  }
}
