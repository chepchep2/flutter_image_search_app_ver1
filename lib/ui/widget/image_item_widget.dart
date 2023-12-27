import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://cdn.pixabay.com/photo/2023/10/05/17/54/geese-8296524_640.jpg',
      fit: BoxFit.cover,
    );
  }
}
