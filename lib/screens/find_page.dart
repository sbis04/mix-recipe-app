import 'package:flutter/material.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/strings.dart';
import 'package:recipe_app/screens/recipe_page.dart';
import 'package:recipe_app/widgets/find_page/recipe_card.dart';
import 'package:recipe_app/widgets/find_page/search_row.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  final List<bool> _chipStateList = [false, false, false, false];

  @override
  void initState() {
    super.initState();
    _chipStateList[1] = true;
  }

  setChip(int index) {
    for (int i = 0; i < _chipStateList.length; i++) {
      if (i == index) {
        _chipStateList[i] = true;
      } else {
        _chipStateList[i] = false;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.recipeWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: page.column(
            children: [
              const Box(
                variant: pageHeading,
                child: TextMix(
                  findPageTitleString,
                ),
              ),
              const SearchRow(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: chips.row(
                  children: [
                    const SizedBox(width: 8),
                    for (int i = 0; i < chipTexts.length; i++)
                      Pressable(
                        onPressed: () {
                          setChip(i);
                        },
                        variant: _chipStateList[i] ? activeChip : inactiveChip,
                        child: Center(
                          child: TextMix(chipTexts[i]),
                        ),
                      ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              RecipeCard(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}


