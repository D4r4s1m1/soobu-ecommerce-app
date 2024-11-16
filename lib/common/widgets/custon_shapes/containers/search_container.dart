import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constraints/colors.dart';
import '../../../../utils/constraints/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SoobuSearchContainer extends StatelessWidget {
  const SoobuSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true, this.padding = const EdgeInsets.symmetric(horizontal: SoobuSizes.md),
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
          width: SoobuDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SoobuSizes.md),
          decoration: BoxDecoration(
              color: showBackground? dark? SoobuColors.dark: SoobuColors.light: Colors.transparent,
              border: showBorder? Border.all(color: SoobuColors.grey): null,
              borderRadius: BorderRadius.circular(SoobuSizes.cardRadiusLg)
          ),
          child: Row(
            children: [
              Icon(icon, color: SoobuColors.darkGrey,),
              const SizedBox(width: SoobuSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall!.apply(color: SoobuColors.darkGrey),)
            ],
          )
      ),
    );
  }
}