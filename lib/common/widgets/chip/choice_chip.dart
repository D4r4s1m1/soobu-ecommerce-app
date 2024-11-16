import 'package:e_commerce/common/widgets/custon_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgets/custon_shapes/icons/circular_icon.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constraints/colors.dart';

class SoobuChoiceChip extends StatelessWidget {
  const SoobuChoiceChip({
    super.key, required this.label, required this.selected, this.onSelected,
  });
  final String label;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SoobuHelperFunctions.getColor(label) != null;
    return ChoiceChip(
      label: isColor? SizedBox() : Text(label),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? SoobuColors.white : null),
      avatar: isColor? SoobuCircularContainer(height: 50,width: 50,backgroundColor: SoobuHelperFunctions.getColor(label)!,) : null,
      labelPadding: isColor? EdgeInsets.all(0): null,
      padding: isColor? EdgeInsets.all(0): null,
      shape: isColor? CircleBorder(): null,
      backgroundColor: isColor? SoobuHelperFunctions.getColor(label)! : null,
    );
  }
}