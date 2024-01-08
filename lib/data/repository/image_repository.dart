import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

abstract interface class ImageRepository {
  Future<List<ImageItem>> getImageResult(String query);
}