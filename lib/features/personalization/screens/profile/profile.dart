import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/images/round_image.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constraints/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constraints/colors.dart';
import '../../../../utils/constraints/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SoobuAppBar(title: Text('Profile'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile picture
              SizedBox(width: double.infinity,
                child: Column(
                  children: [
                    const SoobuCircularImage(image: SoobuImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),

                    /// Details
                    const SizedBox(height: SoobuSizes.spaceBtwItems/2,),
                    const Divider(),
                    const SizedBox(height: SoobuSizes.spaceBtwItems/2),
                    const SoobuSectionHeading(title: 'Contact Information', showActionButton: false,),
                    const SizedBox(height: SoobuSizes.spaceBtwItems/2),
                    SoobuProfileMenu(title: 'Name', value: 'Prevail Ariyo', onTap: () {},),
                    SoobuProfileMenu(title: 'Email', value: 'prevailariyo4@gmail.com', onTap: () {},),
                    const SoobuSectionHeading(title: 'Personal Information', showActionButton: false,),
                    SoobuProfileMenu(title: 'Customer ID', value: '5274', onTap: (){}, icon: Iconsax.copy,),
                    SoobuProfileMenu(title: 'Phone Number', value: '08150865591', onTap: () {},),
                    SoobuProfileMenu(title: 'Gender', value: 'Female', onTap: () {},),
                    SoobuProfileMenu(title: 'Date of Birth', value: '06-10-2002', onTap: () {},),
                    const Divider(),
                    TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red)))
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

