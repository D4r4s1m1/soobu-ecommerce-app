import 'package:flutter/material.dart';

import '../../../utils/constraints/sizes.dart';

class SoobuRoundImage extends StatelessWidget {
  const SoobuRoundImage({
    super.key,
    required this.imageUrl,
    this.backgroundColor ,
    this.onPressed,
    this.isNetworkImage = false,
    this.fit = BoxFit.contain,
    this.padding,
    this.applyImageRadius = true,
    this.width,
    this.height,
    this.borderRadius = SoobuSizes.md,
    this.border,
  });

  final String imageUrl;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final bool isNetworkImage;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool applyImageRadius;
  final double? width, height;
  final BoxBorder? border;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
