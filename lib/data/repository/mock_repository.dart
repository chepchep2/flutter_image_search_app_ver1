import 'package:flutter_image_search_app_ver1/data/data_source/pixabay_api.dart';
import 'package:flutter_image_search_app_ver1/data/mapper/image_mapper.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

abstract interface class ImageRepository {
  Future<List<ImageItem>> getImageItems(String query);
}

class PixabayImageRepository implements ImageRepository {
  final _api = PixabayApi();

  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    final dto = await _api.getImageResult(query);

    if (dto.hits == null) {
      return [];
    }

    return dto.hits!.map((e) => e.toImageItem()).toList();
  }
}

class MockRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    return [
      ImageItem(
          imageUrl:
          "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
          "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_150.jpg",
          tags: ''),
      ImageItem(
          imageUrl:
          "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
          tags: ''),
    ];
  }
}