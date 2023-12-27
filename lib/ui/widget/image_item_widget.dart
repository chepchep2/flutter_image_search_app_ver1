import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class ImageItemWidget extends StatelessWidget {
  final ImageItem imageItem;

  const ImageItemWidget({
    super.key,
    required this.imageItem,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // 코너의 둥근 정도
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageItem.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
