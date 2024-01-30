import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(),
              SizedBox(height: 24),
              viewModel.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        itemCount: viewModel.imageItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          final imageItem = viewModel.imageItems[index];

                          return;
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
