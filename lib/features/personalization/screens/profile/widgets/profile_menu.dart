import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constraints/sizes.dart';

class SoobuProfileMenu extends StatelessWidget {
  const SoobuProfileMenu({
    super.key, this.icon = Iconsax.arrow_right_34, required this.title, required this.value, required this.onTap,
  });

  final IconData icon;
  final String title, value;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all( SoobuSizes.spaceBtwItems/ 1.5),
        child: Row(
          children: [
            Expanded(flex:3,child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis,)),
            Expanded(flex: 5, child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,)),
            Expanded(child: Icon(icon, size: 18,))
          ],
        ),
      ),
    );
  }
}
