import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';
import 'package:recipe_app/res/strings.dart';
import 'package:recipe_app/widgets/recipe_page/ingredients_column.dart';
import 'package:recipe_app/widgets/recipe_page/ingredients_row.dart';

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
            const IngredientsRow(),
            const IngredientsColumn()
          ],
        ),
      ),
    );
  }
}


