library responsive_ui;

import 'package:flutter/material.dart';
import './src/finctions/get_device_type.dart';
import './src/models/device_info_model.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceSize size) builder;

  const ResponsiveUi({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        var mediaQueryData = MediaQuery.of(context);
        var size = DeviceSize(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          normalText: mediaQueryData.size.width * .04,
          titleText: mediaQueryData.size.width * .067,
          normalIconSize: mediaQueryData.size.width * .08,
          mediumIconSize: mediaQueryData.size.width * .12,
          bigIconSize: mediaQueryData.size.width * .15,
          backGroundIconSize: mediaQueryData.size.width * .22,
          largeImage: mediaQueryData.size.width / 1.5,
          mediumImage: mediaQueryData.size.width / 2,
          smallImage: mediaQueryData.size.width / 4,
          normalButton: mediaQueryData.size.width * .066,
          largeButton: mediaQueryData.size.width * .09,
        );
        return builder(context, size);
      },
    );
  }
}
