import 'package:flutter/material.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/strings.dart';
import 'package:recipe_app/screens/recipe_page.dart';
import 'package:recipe_app/widgets/cover_page/get_started_button.dart';

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
              searchRow.row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
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
              Pressable(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
