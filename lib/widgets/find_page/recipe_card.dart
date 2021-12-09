import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/strings.dart';
import 'package:recipe_app/screens/recipe_page.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Pressable(
      mix: imagePresable,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const RecipePage(),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Box(
            mix: Mix(apply(imageBox), h(screenWidth * 1.2)),
            child: Hero(
              tag: 'image',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  recipeImagePath1,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          recipeOverlay.column(
            children: const [
              TextMix(
                recipeTitle,
                variant: title,
              ),
              TextMix(
                recipeDescription,
                variant: subtitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
