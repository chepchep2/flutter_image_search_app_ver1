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
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      body: SafeArea(
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
                labelStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                suffixIcon: IconButton(
                  onPressed: () {
                    viewModel.searchImage('banana');
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
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

                        return ImageItemWidget(imageItem: imageItem);
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
