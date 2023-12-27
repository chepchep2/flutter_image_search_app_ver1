import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // 코너의 둥근 정도
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAgnPd-NLPUE8tG2TLLFq-gXTdI6vuv2hQqQ&usqp=CAU',
        fit: BoxFit.cover,
      ),
    );
  }
}
