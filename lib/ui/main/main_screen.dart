import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
import 'package:flutter_image_search_app_ver1/ui/main/widget/image_item_widget.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'search',
                suffixIcon: IconButton(
                  onPressed: () {
                    viewModel.searchImage(textController.text);
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                itemCount: viewModel.imageItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
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
