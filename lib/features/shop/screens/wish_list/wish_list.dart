import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custon_shapes/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SoobuAppBar(
        title: Text('Wish list', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          SoobuCircularIcon(icon: Icons.add, onPressed: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
          child: SoobuGridviewLayout(itemCount: 6, itemBuilder: (_, index) => const SoobuProductCardVertical()),
        ),
      ),
    );
  }
}
