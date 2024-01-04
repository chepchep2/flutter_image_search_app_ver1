import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/mock_image_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/main_view_model.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final textController = TextEditingController();


  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final veiwModel = context.watch<MainViewModel>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(width: 5, color: Colors.yellow),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(width: 5, color: Colors.yellow),
                  ),
                  hintText: '검색',
                  hintStyle: const TextStyle(color: Colors.red),
                  suffixIcon: IconButton(
                    onPressed: () {
                      veiwModel.searchImage(textController.text);
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              veiwModel.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        itemCount: veiwModel.imageItems.length,
                        itemBuilder: (context, index) {
                          final imageItem = veiwModel.imageItems[index];
                          return ImageItemWidget(
                            imageItem: imageItem,
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
