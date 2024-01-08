import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
    'images/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return SizedBox(
            child: Card(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Image.asset(
                    images[index],
                    height: 166, // Adjust the height to 300 pixels
                  ),
                  const SizedBox(height: 8),
                  // Text('Card ' + (index + 1).toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
