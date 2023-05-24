import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/int_constants.dart';

class TextScaling extends StatelessWidget {
  final Widget child;

  const TextScaling({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double scaleFactor = 1.0;

    if (size.width < phoneExSmallWidth) {
      scaleFactor = 0.6;
    } else if (size.width < phoneSmallWidth) {
      scaleFactor = 0.8;
    } else if (size.width < phoneMediumWidth) {
      scaleFactor = 0.9;
    } else if (size.width < phoneLargeWidth) {
      scaleFactor = 1.0;
    } else if (size.width < tabletSmallWidth) {
      scaleFactor = 1.1;
    } else if (size.width >= tabletSmallWidth) {
      scaleFactor = 1.2;
    }
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: scaleFactor),
      child: child,
    );
  }

  static double getHeightScaleFactor(context) {
    final size = MediaQuery.of(context).size;
    if (size.height < phoneExSmallHeight) {
      return 0.4;
    } else if (size.height < phoneSmallHeight) {
      return 0.5;
    } else if (size.height < phoneMediumHeight) {
      return 0.6;
    } else if (size.height < phoneLargeHeight) {
      return 0.8;
    }
    return 1.0;
  }
}
