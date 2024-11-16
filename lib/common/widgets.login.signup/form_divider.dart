import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constraints/colors.dart';

class SoobuLoginDivide extends StatelessWidget {
  const SoobuLoginDivide({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {

    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? SoobuColors.darkGrey : SoobuColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? SoobuColors.darkGrey : SoobuColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}

