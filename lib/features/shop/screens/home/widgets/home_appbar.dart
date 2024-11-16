import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products.cart/cart_menu_icon.dart';
import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/text_strings.dart';

class SoobuHomeAppbar extends StatelessWidget {
  const SoobuHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SoobuAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SoobuText.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: SoobuColors.grey),),
          Text(SoobuText.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: SoobuColors.white),)
        ],
      ),
      actions: [
        SoobuCartCounterIcon(onPressed: () {}, color: Colors.white,)
      ],
    );
  }
}
