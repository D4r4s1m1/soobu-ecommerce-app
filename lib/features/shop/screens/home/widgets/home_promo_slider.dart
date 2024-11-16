import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custon_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/round_image.dart';
import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/sizes.dart';

class SoobuPromoSlider extends StatelessWidget {
  const SoobuPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(viewportFraction: 1, onPageChanged: (index, _) => controller.updatePageIndicator(index),),
          items: banners.map((url) => SoobuRoundImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: SoobuSizes.spaceBtwItems,),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  SoobuCircularContainer(
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? SoobuColors.primaryColor : SoobuColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
