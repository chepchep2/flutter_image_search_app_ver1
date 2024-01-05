import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/ui/main_view_model.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final textController = TextEditingController();

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
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'search',
                  hintStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      viewModel.searchImages(textController.text
                      );
                    },
                    icon: const Icon(
                      Icons.search,
                      size: 32,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              viewModel.isLoading ? const Center(child: CircularProgressIndicator()) : Expanded(
                child: GridView.builder(
                  itemCount: viewModel.imageItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    final imageItem = viewModel.imageItems[index];

                    return ImageItemWidget(
                      imageItem: imageItem,
                    );
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
