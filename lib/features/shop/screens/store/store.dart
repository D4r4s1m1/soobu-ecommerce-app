import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custon_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce/utils/constraints/colors.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brand/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SoobuAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [SoobuCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: SoobuHelperFunctions.isDarkMode(context)
                        ? SoobuColors.black
                        : SoobuColors.white,
                    expandedHeight: 425,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          const SizedBox(
                            height: SoobuSizes.spaceBtwItems,
                          ),
                          const SoobuSearchContainer(
                            text: 'Search in store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: SoobuSizes.spaceBtwSections,
                          ),
      
                          /// Featured brands
                          SoobuSectionHeading(
                            title: 'Featured Brands',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: SoobuSizes.spaceBtwItems / 1.5,
                          ),
                          SoobuGridviewLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const SoobuBrandCard(showBorder: true,);
                              })
                        ],
                      ),
                    ) ,
                    bottom: const SoobuTabBar( tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics'))
                    ],
                    )
                )
              ];
            },
            body: const TabBarView(children: [

              SoobuCategoryTab(),
              SoobuCategoryTab(),
              SoobuCategoryTab(),
              SoobuCategoryTab(),
              SoobuCategoryTab(),
            ])
        ),
      ),
    );
  }
}




