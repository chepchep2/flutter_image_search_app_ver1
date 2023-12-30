import 'package:flutter_image_search_app_ver1/data/data_source/pixabay_api.dart';
import 'package:flutter_image_search_app_ver1/data/mapper/image_mapper.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

abstract interface class ImageRepository {
  Future<List<ImageItem>> getImageItems(String query);
}

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

class MockImageRepository implements ImageRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    await Future.delayed(const Duration(seconds: 1));

    if (query == 'apple') {
      return [
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
            tags: ''),
      ];
    } else {
      return [
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2018/05/27/16/30/melon-3433835_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2016/11/21/15/46/watermelon-1846051_150.jpg",
            tags: ''),
        ImageItem(
            imageUrl:
                "https://cdn.pixabay.com/photo/2013/04/07/17/05/kiwano-101499_150.jpg",
            tags: ''),
      ];
    }
  }
}
