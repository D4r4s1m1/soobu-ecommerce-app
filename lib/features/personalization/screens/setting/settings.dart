import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custon_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constraints/image_strings.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../utils/constraints/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SoobuPrimaryHeaderContainer(
              child: Column(
                children: [
                  SoobuAppBar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: SoobuColors.white),),
                  ),
                  const SoobuUserProfileTile(),
                  const SizedBox(height: SoobuSizes.spaceBtwSections,),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
              child: Column(
                children: [
                  const SoobuSectionHeading(title: 'Account Setting', showActionButton: false,),
                  const SizedBox(height: SoobuSizes.spaceBtwItems,),
                  SoobuSettingMenuTile(icon: Iconsax.safe_home, title: 'My Address', subtitle: 'Set  shopping delivery address', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove product and move to check out', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.bag_tick, title: 'My orders', subtitle: 'In-progress and completed orders', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts', onTap: (){},),

                  /// App settings
                  const SizedBox(height: SoobuSizes.spaceBtwSections,),
                  const SoobuSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: SoobuSizes.spaceBtwItems,),
                  SoobuSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload data to your cloud firebase', onTap: (){},),
                  SoobuSettingMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set Recommendation based on location', trailing: Switch(value: true, onChanged: (value){}, activeColor: SoobuColors.primaryColor,)),
                  SoobuSettingMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){}, activeColor: SoobuColors.primaryColor,)),
                  SoobuSettingMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Set Image Quality to be seen', trailing: Switch(value: false, onChanged: (value){}, activeColor: SoobuColors.primaryColor,))
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

