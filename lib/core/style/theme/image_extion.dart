import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({required this.testImage});

  final String? testImage;

  @override
  MyImages copyWith() {
    String? testImage;

    return MyImages(testImage: testImage);
  }

  @override
  MyImages lerp(covariant ThemeExtension<MyImages>? other, double t) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(
      testImage: testImage,
    );
  }

  static const MyImages light = MyImages(testImage: AppImages.testLight);
  static const MyImages dark = MyImages(testImage: AppImages.testDark);
}
