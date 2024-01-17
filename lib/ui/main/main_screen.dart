import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
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
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: 'search',
              suffixIcon: IconButton(
                onPressed: () {
                  viewModel.searchImage(textController.text);
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(height: 24),
          viewModel.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: GridView.builder(
                    itemCount: viewModel.imageItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final imageItem = viewModel.imageItems[index];

                      return ImageItemWIdget(imageItem: imageItem);
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
