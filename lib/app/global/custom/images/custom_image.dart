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
      case ImageType.home:
        return HomeImage();
      case ImageType.shipCalculate:
        return ShipCalculateImage();
      case ImageType.myWalle:
        return MyWalletImage();
      case ImageType.myAccount:
        return MyAccountImage();
      case ImageType.addShip:
        return AddShipImage();
      case ImageType.packaging:
        return PackagingImage();
      case ImageType.shippingFurnitureHome:
        return ShippingFurnitureHomeImage();
      case ImageType.buyMe:
        return BuyMeImage();
      case ImageType.boxingAndExpress:
        return BoxingAndExpressImage();
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

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.myHome);
  }
}

class ShipCalculateImage extends StatelessWidget {
  const ShipCalculateImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.shipCalculate);
  }
}

class MyWalletImage extends StatelessWidget {
  const MyWalletImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.myWallet);
  }
}

class MyAccountImage extends StatelessWidget {
  const MyAccountImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.myAccount);
  }
}

class AddShipImage extends StatelessWidget {
  const AddShipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.addShip);
  }
}

class PackagingImage extends StatelessWidget {
  const PackagingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.packaging);
  }
}

class ShippingFurnitureHomeImage extends StatelessWidget {
  const ShippingFurnitureHomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.shipping);
  }
}

class BuyMeImage extends StatelessWidget {
  const BuyMeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.buyMe);
  }
}

class BoxingAndExpressImage extends StatelessWidget {
  const BoxingAndExpressImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralImage(imagePath: Images.boxing);
  }
}
