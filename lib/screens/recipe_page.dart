import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';
import 'package:recipe_app/res/strings.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.recipeWhite,
      appBar: AppBar(
        backgroundColor: Palette.recipeWhite,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Palette.recipeBlack),
        title: Box(
          mix: page,
          variant: pageHeading2,
          child: const TextMix(
            recipeTitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: page.column(
          overrideMix: Mix(
            padding(16),
            gap(24),
          ),
          children: [
            Hero(
              tag: 'image',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  recipeImagePath1,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            textChipRow.row(
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
            ),
            ListView.separated(
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
            )
          ],
        ),
      ),
    );
  }
}
