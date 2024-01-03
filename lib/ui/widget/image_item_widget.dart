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
      borderRadius: BorderRadius.circular(20),
      // child: Image.network(
      //   'https://www.biztechcs.com/wp-content/uploads/2023/09/How-Flutter-is-All-Set-to-Redefine-App-Development-Trends-2023-Updated-jpg.webp',
      //   fit: BoxFit.cover,
      // ),
      child: Image.network(imageItem.imageUrl),
    );
  }
}
