import 'package:asroo_store/core/style/theme/color_exstion.dart';
import 'package:asroo_store/core/style/theme/image_extion.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  // image
  MyAssets get image => Theme.of(this).extension<MyAssets>()!;

  // style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
}
