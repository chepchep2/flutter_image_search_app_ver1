import 'package:flutter_image_search_app_ver1/data/dto/pixabay_dto.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

extension DtoToImage on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      imageUrl: previewURL ?? '',
      tags: tags ?? '',
    );
  }
}
