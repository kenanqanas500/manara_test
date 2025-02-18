import 'package:flutter/material.dart';
import 'package:manara_test/app/global/custom/images/general_image.dart';
import 'package:manara_test/core/enum/image_type.dart';
import 'package:manara_test/core/helpers/images.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.type});
  final ImageType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ImageType.logo:
        return LogoImage();
      case ImageType.notification:
        return NotificationImage();
      case ImageType.arrowUp:
        return ArrowUpImage();
    }
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.logo);
  }
}

class NotificationImage extends StatelessWidget {
  const NotificationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.notification);
  }
}

class ArrowUpImage extends StatelessWidget {
  const ArrowUpImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.arrowUp);
  }
}
