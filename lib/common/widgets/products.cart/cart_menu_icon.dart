import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constraints/colors.dart';

class SoobuCartCounterIcon extends StatelessWidget {
  const SoobuCartCounterIcon({
    super.key, this.color , required this.onPressed,
  });

  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed,
            icon: Icon(Iconsax.shopping_cart,color: color,)),
        Positioned(right: 0, child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              color: SoobuColors.black,
              borderRadius: BorderRadius.circular(100)
          ),
          child: Center(child: Text('2', style: Theme
              .of(context).textTheme.labelLarge!.apply(color: SoobuColors.white, fontSizeFactor: 0.8))),
        ))
      ],
    );
  }
}
