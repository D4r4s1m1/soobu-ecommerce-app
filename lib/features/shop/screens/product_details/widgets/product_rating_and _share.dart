import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constraints/sizes.dart';

class SoobuRatingAndShare extends StatelessWidget {
  const SoobuRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Iconsax.star5, size: 24, color: Colors.amber,),
              const SizedBox(width: SoobuSizes.spaceBtwItems/2,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                        const TextSpan(text: '(245)'),
                      ]
                  )
              )
            ],
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.share))
        ]
    );
  }
}
