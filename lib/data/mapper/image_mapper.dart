import 'package:flutter_image_search_app_ver1/data/dto/pixabay_dto.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

extension DtoToModel on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      imageUrl: previewURL ??
          'https://pbs.twimg.com/media/GAALXGibsAEI8cD?format=jpg&name=large',
      tags: tags ?? '',
    );
  }
}
