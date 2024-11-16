import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custon_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/common/widgets/custon_shapes/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/images/round_image.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_rating_and%20_share.dart';
import 'package:e_commerce/utils/constraints/image_strings.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constraints/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SoobuProductImageSlider(),
            /// Product review and details
            Padding(
              padding: EdgeInsets.only(left: SoobuSizes.defaultSpace, right: SoobuSizes.defaultSpace, bottom: SoobuSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating and share
                  SoobuRatingAndShare(),
                  /// price title stock and shade
                  SoobuProductMetaData(),
                  SizedBox(height: SoobuSizes.spaceBtwItems,),
                  /// Attribute
                  SoobuProductAttribute(),
                  SizedBox(height: SoobuSizes.spaceBtwSections,),
                  /// checkout button
                  SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: Text('Check out'))),
                  SizedBox(height: SoobuSizes.spaceBtwSections,),
                  /// description
                  SoobuSectionHeading(title: 'Description', showActionButton: false,)
                  /// review

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


