import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class ImageItemWIdget extends StatelessWidget {
  final ImageItem imageItem;

  const ImageItemWIdget({
    super.key,
    required this.imageItem,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageItem.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
