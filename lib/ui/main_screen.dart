import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final repository = MockRepository();

  List<ImageItem> imageItems = [];

  bool isLoading = false;

  Future<void> searchImageItems(String query) async {
    setState(() {
      isLoading = true;
    });

    imageItems = await repository.getImageItems(query);

    setState(() {
      isLoading = false;
    });
  }

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
                  hintText: 'search',
                  hintStyle: const TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                  suffixIcon: IconButton(
                    onPressed: () {
                      searchImageItems('baseball');
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.lightBlue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 5, color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 5, color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        itemCount: imageItems.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          final imageItem = imageItems[index];

                          return ImageItemWidget(imageItem: imageItem);
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
