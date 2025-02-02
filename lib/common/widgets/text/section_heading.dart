import 'package:flutter/material.dart';

class SoobuSectionHeading extends StatelessWidget {
  const SoobuSectionHeading({
    super.key, required this.title, this.buttonTitle = 'view all', this.showActionButton = true, this.textColor, this.onPressed,
  });
  final String title, buttonTitle;
  final bool showActionButton;
  final Color? textColor;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis,),
        if (showActionButton) TextButton(onPressed: (){}, child: Text(buttonTitle))
      ],
    );
  }
}
