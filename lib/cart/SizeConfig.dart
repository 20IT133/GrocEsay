import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double _screenWidth = 5;
  static double _screenHeight = 5;
  static double _blockSizeHorizontal = 5;
  static double _blockSizeVertical = 5;

  static double textMultiplier = 5;
  static double imageSizeMultiplier = 5;
  static double heightMultiplier = 5;
  static double widthMultiplier = 5;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {}
}
