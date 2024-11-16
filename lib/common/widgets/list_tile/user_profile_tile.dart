import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/constraints/image_strings.dart';
import '../images/circular_image.dart';

class SoobuUserProfileTile extends StatelessWidget {
  const SoobuUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SoobuCircularImage(image: SoobuImages.user, width: 56, height: 56),
      title: Text('Prevail Ariyo', style: Theme.of(context).textTheme.headlineSmall!.apply(color: SoobuColors.white),),
      subtitle: Text('prevailariyo4@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: SoobuColors.white),),
      trailing: IconButton(onPressed: () => Get.to(const ProfileScreen()), icon: const Icon(Iconsax.edit, color: SoobuColors.white,)),
    );
  }
}
