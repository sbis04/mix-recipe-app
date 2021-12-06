import 'package:flutter/material.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/strings.dart';

class FindPage extends StatelessWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.recipeWhite,
      body: SafeArea(
        child: findPage.column(
          children: [
            const Box(
              variant: pageHeading,
              child: TextMix(
                findPageTitleString,
              ),
            ),
            searchRow.row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Recipe",
                      hintStyle: const TextStyle(
                        color: Palette.recipeBlack,
                        fontSize: 16.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          color: Palette.recipeBlack,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          color: Palette.recipeBlack,
                          width: 3,
                        ),
                      ),
                      prefixIcon: const IconMix(
                        icon: Icons.search,
                      ),
                    ),
                  ),
                ),
                Pressable(
                  variant: iconButton,
                  child: const Box(
                    child: IconMix(
                      icon: Icons.auto_awesome_mosaic_rounded,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: chips.row(
                children: [
                  const SizedBox(width: 8),
                  const Box(
                    variant: chip,
                    child: Center(
                      child: TextMix('All'),
                    ),
                  ),
                  const Box(
                    variant: chip,
                    child: Center(
                      child: TextMix('Sushi'),
                    ),
                  ),
                  const Box(
                    variant: chip,
                    child: Center(
                      child: TextMix('Burger'),
                    ),
                  ),
                  const Box(
                    variant: chip,
                    child: Center(
                      child: TextMix('Dessert'),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
