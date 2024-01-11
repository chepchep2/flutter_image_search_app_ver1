import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'search',
                  suffixIcon: IconButton(
                    onPressed: () {
                      viewModel.searchImage('banana');
                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    final imageItems = ImageItem(
                        imageUrl:
                            "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
                        tags: 'banana');

                    return ImageItemWidget(imageItem: imageItems);
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
