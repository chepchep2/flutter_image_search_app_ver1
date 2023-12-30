import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/main_view_mdoel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final textController = TextEditingController();
  final viewModel = MainViewModel();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.red, width: 4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.red, width: 4),
                  ),
                  hintText: 'search',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        viewModel.searchImage(textController.text);
                      });
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: viewModel.imageItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
