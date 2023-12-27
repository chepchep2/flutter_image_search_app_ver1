import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/ui/widget/image_item_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xFF4FB6B2),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xFF4FB6B2),
                    ),
                  ),
                  hintText: 'Search',
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF4FB6B2),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ImageItemWidget();
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
