import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://library.sportingnews.com/styles/crop_style_16_9_desktop/s3/2021-10/mlb-logo-072015-getty-ftrjpg_rdbcaj9vcazb1uszd8i5sr9t5.jpg?itok=Ag5JCDxg',
        fit: BoxFit.cover,
      ),
    );
  }
}
