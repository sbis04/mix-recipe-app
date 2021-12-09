import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/strings.dart';

class IngredientsRow extends StatelessWidget {
  const IngredientsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textChipRow.row(
      children: [
        const TextMix(
          ingredientsTitle,
          variant: rowTitle,
        ),
        Pressable(
          onPressed: () {},
          variant: serving,
          child: const Center(
            child: TextMix(oneServing),
          ),
        ),
      ],
    );
  }
}
