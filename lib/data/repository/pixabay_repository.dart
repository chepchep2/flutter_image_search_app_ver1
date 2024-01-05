import 'package:flutter_image_search_app_ver1/data/data_source/pixabay_api.dart';
import 'package:flutter_image_search_app_ver1/data/mapper/image_mapper.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';

class PixabayRepository implements ImageRepository {
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