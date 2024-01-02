import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoUDuhmPxStnLaxkZf4QUkyvCjBYoZsTZ2lwKrqfXLhQ&s',
        fit: BoxFit.cover,
      ),
    );
  }
}
