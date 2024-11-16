import 'package:flutter/material.dart';

import '../../utils/constraints/sizes.dart';

class SoobuSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: SoobuSizes.appBarHeight,
    left: SoobuSizes.defaultSpace,
    bottom: SoobuSizes.defaultSpace,
    right: SoobuSizes.defaultSpace,
  );
}