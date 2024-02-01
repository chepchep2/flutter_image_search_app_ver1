import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'search',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
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
