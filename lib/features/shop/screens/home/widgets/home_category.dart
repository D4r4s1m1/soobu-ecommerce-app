import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constraints/image_strings.dart';

class SoobuHomeCategory extends StatelessWidget {
  const SoobuHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return SoobuVerticalImageText(image: SoobuImages.google, title: 'Shoe', onTap: () {},);
          }),
    );
  }
}