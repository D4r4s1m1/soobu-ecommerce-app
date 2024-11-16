import 'package:flutter/material.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/constraints/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SoobuCircularImage extends StatelessWidget {
  const SoobuCircularImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.fit = BoxFit.cover,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = 0,
  });

  final String image;
  final bool isNetworkImage;
  final BoxFit? fit;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double? width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: width,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          color: backgroundColor?? (SoobuHelperFunctions.isDarkMode(context)
              ? SoobuColors.black
              : SoobuColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: ClipOval(
        child: Image(
          image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,
          color: overlayColor,
          fit: fit,
        ),
      ),
    );
  }
}
