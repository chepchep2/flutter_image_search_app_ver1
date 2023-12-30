import 'package:flutter_image_search_app_ver1/data/dto/pixabay_dto.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

extension DtoToModel on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      imageUrl: previewURL ??
          'https://cdn.pixabay.com/photo/2018/05/27/16/30/melon-3433835_150.jpg"',
      tags: tags ?? '',
    );
  }
}
