import 'package:flutter/material.dart';

extension Responsive on BuildContext {
  /// Function to calculate responsive height based on screen dimensions.
  /// It adjusts the given height proportionally to the screen size.
  ///
  /// [value] : The target height you want.
  /// [figmaDesignScreenHeight] : The base height of the screen you're designing on (e.g., 932).
  ///
  /// Returns a double value for the responsive height.
  double h(double value, {double figmaDesignScreenHeight = 932}) {
    double screenHeight = MediaQuery.sizeOf(this).height;
    return (value / figmaDesignScreenHeight) * screenHeight;
  }

  /// Function to calculate responsive width based on screen dimensions.
  /// It adjusts the given width proportionally to the screen size.
  ///
  /// [value] : The target width you want.
  /// [figmaDesignScreenWidth] : The base width of the screen you're designing on (e.g., 430).
  ///
  /// Returns a double value for the responsive width.
  double w(double value, {double figmaDesignScreenWidth = 430}) {
    double screenWidth = MediaQuery.sizeOf(this).width;
    return (value / figmaDesignScreenWidth) * screenWidth;
  }

  double get screenHeight => MediaQuery.sizeOf(this).height;

  double get screenWidth => MediaQuery.sizeOf(this).width;
}
