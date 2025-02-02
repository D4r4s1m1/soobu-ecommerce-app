import 'package:e_commerce/features/personalization/screens/setting/settings.dart';
import 'package:e_commerce/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce/features/shop/screens/store/store.dart';
import 'package:e_commerce/features/shop/screens/wish_list/wish_list.dart';
import 'package:e_commerce/utils/constraints/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation:0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark? SoobuColors.black: SoobuColors.white,
          indicatorColor: dark? SoobuColors.white.withOpacity(0.1) : SoobuColors.black.withOpacity(0.1),
          destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;


  final screens = [const HomeScreen(), const StoreScreen(), const WishlistScreen(), SettingsScreen()];
}
