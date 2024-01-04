import 'package:flutter_image_search_app_ver1/data/dto/pixabay_dto.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

extension DtoToImage on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      imageUrl: previewURL ??
          'https://www.biztechcs.com/wp-content/uploads/2023/09/How-Flutter-is-All-Set-to-Redefine-App-Development-Trends-2023-Updated-jpg.webp',
      tags: tags ?? '',
    );
  }
}
