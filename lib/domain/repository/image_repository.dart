import 'package:flutter_image_search_app_ver1/domain/model/image_item.dart';

abstract interface class ImageRepository {
  Future<List<ImageItem>> getImageItems(String query);
}