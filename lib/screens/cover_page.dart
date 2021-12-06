import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';
import 'package:recipe_app/res/strings.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        children: [
          Box(
            mix: Mix(
              h(double.maxFinite),
            ),
            child: Image.asset(
              coverImagePath,
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerLeft,
            ),
          ),
          overlay.column(
            children: [
              const TextMix(
                coverTitleString,
                variant: title,
              ),
              const TextMix(
                coverSubtitleString,
                variant: subtitle,
              ),
              Pressable(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TextMix(
                      'Get Started',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Box(
                      mix: Mix(
                        rounded(20),
                        h(40),
                        w(40),
                        bgColor(Colors.white),
                      ),
                      child: IconMix(
                        mix: Mix(
                          iconColor(Palette.recipeGreen),
                        ),
                        icon: Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
                variant: startedButton,
              )
            ],
          ),
        ],
      ),
    );
  }
}
