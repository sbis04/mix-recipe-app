import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/strings.dart';

class IngredientsColumn extends StatelessWidget {
  const IngredientsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ingredientsName.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return ingredientRow.row(
          children: [
            TextMix(
              ingredientsName[index],
              variant: ingredientTitle,
            ),
            TextMix(
              ingredientsQnt[index],
              variant: ingredientQnt,
            ),
          ],
        );
      },
    );
  }
}
