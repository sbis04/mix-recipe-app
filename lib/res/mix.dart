import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/palette.dart';

const title = Var('title');
const subtitle = Var('subtitle');
const startedButton = Var('startedButton');
const buttonIcon = Var('buttonIcon');

Mix get overlay {
  return Mix(
    margin(8),
    rounded(10),
    padding(20),
    gap(10),
    mainAxisSize(MainAxisSize.max),
    mainAxis(MainAxisAlignment.end),
    crossAxis(CrossAxisAlignment.start),
    subtitle(
      textStyle($subtitle1),
      font(
        color: Colors.white70,
      ),
    ),
    title(
      titleCase(),
      textStyle($h4),
      font(
        weight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    startedButton(
      marginTop(24),
      marginBottom(16),
      rounded(35),
      animated(),
      scale(1),
      padding(8),
      paddingLeft(16),
      elevation(8),
      bgColor(Palette.recipeGreen),
      font(
        family: 'GoogleSans',
        size: 20,
        weight: FontWeight.w500,
      ),
      dark(
        textColor(Colors.white),
      ),
      press(
        elevation(1),
        scale(0.95),
      ),
    ),
    buttonIcon(
      rounded(20),
      h(40),
      w(40),
      bgColor(Colors.white),
      iconColor(Palette.recipeGreen),
    ),
  );
}
