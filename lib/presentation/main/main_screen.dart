import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/presentation/main/main_view_model.dart';
import 'package:flutter_image_search_app_ver1/presentation/widget/image_item_widget.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
        body: SafeArea(
          child: Column(
                children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'search',
              suffixIcon: IconButton(
                onPressed: () {
                  viewModel.searchImage('apple');
                },
                icon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: viewModel.imageItems.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                final imageItems = viewModel.imageItems[index];
            
                return ImageItemWidget(imageItem: imageItems);
              },
            ),
          ),
                ],
              ),
        ));
  }
}
