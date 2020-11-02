
import 'package:flutter/material.dart';
import 'package:responsive_widget/src/enums/enums.dart';

class DeviceSize {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;
  final double normalText;
  final double titleText;
  final double normalIconSize;
  final double mediumIconSize;
  final double bigIconSize;
  final double backGroundIconSize;
  final double largeImage;
  final double mediumImage;
  final double smallImage;
  final double normalButton;
  final double largeButton;

  DeviceSize({
    this.orientation,
    this.deviceType,
    this.screenWidth,
    this.screenHeight,
    this.localWidth,
    this.localHeight,
    this.normalText,
    this.titleText,
    this.normalIconSize,
    this.mediumIconSize,
    this.bigIconSize,
    this.largeImage,
    this.mediumImage,
    this.smallImage,
    this.normalButton,
    this.largeButton,
    this.backGroundIconSize,
  });
}
