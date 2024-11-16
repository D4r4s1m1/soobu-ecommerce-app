import 'package:flutter/material.dart';

import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/constraints/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SoobuTermsAndConditionCheckbox extends StatelessWidget {
  const SoobuTermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width:24, height:24, child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: SoobuSizes.spaceBtwItems,),
        Text.rich(TextSpan(
            children: [
              TextSpan(text: '${SoobuText.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: '${SoobuText.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark? SoobuColors.white : SoobuColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark? SoobuColors.white : SoobuColors.primaryColor,
              )),
              TextSpan(text: '${SoobuText.and} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: SoobuText.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark? SoobuColors.white : SoobuColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark? SoobuColors.white : SoobuColors.primaryColor,
              )),
            ]
        )),
      ],
    );
  }
}
