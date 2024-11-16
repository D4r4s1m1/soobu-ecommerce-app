import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class SoobuTabBar extends StatelessWidget implements PreferredSizeWidget {
  const SoobuTabBar({
    super.key, required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorColor: SoobuColors.primaryColor,
      unselectedLabelColor: SoobuColors.grey,
      labelColor: SoobuHelperFunctions.isDarkMode(context)? SoobuColors.white: SoobuColors.primaryColor,
      tabs: tabs,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SoobuDeviceUtils.getAppBarHeight());
}