import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageSlideshow(
          indicatorColor: Colors.blue,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'lib/assets/1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/3.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/4.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/5.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
