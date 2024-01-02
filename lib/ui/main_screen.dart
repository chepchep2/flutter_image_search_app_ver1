import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    final imageItem = ImageItem(imageUrl: 'https://pbs.twimg.com/media/GAALXGibsAEI8cD?format=jpg&name=large', tags: 'apple');

                    return  ImageItemWidget(imageItem: imageItem);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
