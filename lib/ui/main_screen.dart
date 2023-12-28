import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_item_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final repository = MockImageItemRepository();

  List<ImageItem> imageItems = [];

  Future<void> searchImage(String query) async {
    imageItems = await repository.getImageItem(query);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.yellow, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.yellow, width: 5),
                  ),
                  hintText: 'search',
                  suffixIcon: IconButton(
                    onPressed: () {
                      searchImage('apple');
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  itemCount: imageItems.length,
                  itemBuilder: (context, index) {
                    final imageItem = imageItems[index];
                    return ImageItemWidget(
                      imageItem: imageItem,
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32,
                      crossAxisCount: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
