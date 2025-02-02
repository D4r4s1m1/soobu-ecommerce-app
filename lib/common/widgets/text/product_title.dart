import 'package:flutter/material.dart';

class SoobuProductTitle extends StatelessWidget {
  const SoobuProductTitle({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLine = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLine;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}
