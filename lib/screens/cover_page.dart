import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/images.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/strings.dart';
import 'package:recipe_app/widgets/cover_page/get_started_button.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
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
            children: const [
              TextMix(
                coverTitleString,
                variant: title,
              ),
              TextMix(
                coverSubtitleString,
                variant: subtitle,
              ),
              GetStartedButton(),
            ],
          ),
        ],
      ),
    );
  }
}
