import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class SoobuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SoobuAppBar({super.key, this.title,  this.showBackArrow = false, this.leadingIcon, this.actions, this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow ;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    const EdgeInsets.symmetric(horizontal: SoobuSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: SoobuHelperFunctions.isDarkMode(context)? SoobuColors.white : SoobuColors.black),
        centerTitle: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)): null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SoobuDeviceUtils.getAppBarHeight());
}
