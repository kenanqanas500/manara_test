import 'package:flutter/material.dart';

class GeneralImage extends StatelessWidget {
  const GeneralImage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}
