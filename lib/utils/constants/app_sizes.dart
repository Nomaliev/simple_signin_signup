import 'package:flutter/material.dart';

class AppSizes {
  Size size = WidgetsBinding
          .instance.platformDispatcher.views.first.physicalSize /
      WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
  static double sectionGap =
      (WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
                  WidgetsBinding
                      .instance.platformDispatcher.views.first.devicePixelRatio)
              .height /
          26;
  static double itemGap =
      (WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
                  WidgetsBinding
                      .instance.platformDispatcher.views.first.devicePixelRatio)
              .height /
          56;
  static double defaultPadding =
      (WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
                  WidgetsBinding
                      .instance.platformDispatcher.views.first.devicePixelRatio)
              .height /
          38;
  static double smallGap =
      (WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
                  WidgetsBinding
                      .instance.platformDispatcher.views.first.devicePixelRatio)
              .height /
          90;
  static double loginSizedBox =
      (WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
                  WidgetsBinding
                      .instance.platformDispatcher.views.first.devicePixelRatio)
              .height /
          9;
}
