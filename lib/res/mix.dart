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
        color: Palette.recipeWhite.withOpacity(0.7),
      ),
    ),
    title(
      titleCase(),
      textStyle($h4),
      font(
        weight: FontWeight.bold,
        color: Palette.recipeWhite,
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
        textColor(Palette.recipeWhite),
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
      bgColor(Palette.recipeWhite),
      iconColor(Palette.recipeGreen),
    ),
  );
}

const pageHeading = Var('pageHeading');
const pageHeading2 = Var('pageHeading2');

Mix get page {
  return Mix(
    mainAxisSize(MainAxisSize.min),
    mainAxis(MainAxisAlignment.start),
    crossAxis(CrossAxisAlignment.start),
    pageHeading(
      padding(16),
      titleCase(),
      textStyle($h4),
      font(
        weight: FontWeight.bold,
        color: Palette.recipeBlack,
      ),
    ),
    pageHeading2(
      padding(16),
      titleCase(),
      fontSize(28),
      font(
        weight: FontWeight.bold,
        color: Palette.recipeBlack,
      ),
    ),
  );
}

const iconButton = Var('iconButton');

Mix get searchRow {
  return Mix(
    gap(16),
    paddingLeft(16),
    paddingRight(16),
    icon(
      color: Palette.recipeBlack,
      size: 26,
    ),
    iconButton(
      rounded(10),
      w(60),
      h(60),
      bgColor(Palette.recipeGreenLight),
      gap(10),
      icon(
        color: Palette.recipeGreen,
        size: 42,
      ),
    ),
  );
}

const activeChip = Var('activeChip');
const inactiveChip = Var('inactiveChip');

Mix get chips {
  return Mix(
    gap(16),
    paddingTop(24),
    mainAxisSize(MainAxisSize.min),
    activeChip(
      rounded(16),
      padding(16),
      w(120),
      h(60),
      bgColor(Palette.recipeGreen),
      font(
        color: Palette.recipeWhite,
        weight: FontWeight.w500,
        letterSpacing: 1,
        size: 20,
      ),
    ),
    inactiveChip(
      rounded(16),
      padding(16),
      w(120),
      bgColor(Palette.recipeBlack.withOpacity(0.1)),
      font(
        color: Palette.recipeWhite,
        weight: FontWeight.w500,
        letterSpacing: 1,
        size: 20,
      ),
    ),
  );
}

Mix get recipeOverlay {
  return Mix(
    apply(overlay),
    paddingLeft(32),
    paddingBottom(24),
  );
}

Mix get imagePresable {
  return Mix(
    animated(),
    scale(1),
    press(
      scale(0.90),
    ),
  );
}

Mix get imageBox {
  return Mix(
    paddingTop(24),
    rounded(30),
    paddingHorizontal(16),
  );
}

const rowTitle = Var('rowTitle');
const serving = Var('serving');

Mix get textChipRow {
  return Mix(
    mainAxis(MainAxisAlignment.spaceBetween),
    rowTitle(
      padding(16),
      titleCase(),
      fontSize(28),
      font(
        weight: FontWeight.bold,
        color: Palette.recipeBlack,
      ),
    ),
    serving(
      animated(),
      scale(1),
      press(
        scale(0.90),
      ),
      rounded(16),
      paddingVertical(10),
      paddingHorizontal(24),
      bgColor(Palette.recipeGreen),
      font(
        color: Palette.recipeWhite,
        weight: FontWeight.w500,
        size: 16,
      ),
    ),
  );
}

const ingredientTitle = Var('ingredientTitle');
const ingredientQnt = Var('ingredientQnt');

Mix get ingredientRow {
  return Mix(
    mainAxis(MainAxisAlignment.spaceBetween),
    bgColor(Palette.recipeWhite),
    rounded(16),
    elevation(4),
    padding(24),
    ingredientTitle(
      titleCase(),
      textStyle($h6),
      font(
        weight: FontWeight.bold,
        color: Palette.recipeBlack,
      ),
    ),
    ingredientQnt(
      titleCase(),
      textStyle($body1),
      font(
        weight: FontWeight.bold,
        color: Palette.recipeBlack.withOpacity(0.5),
      ),
    ),
  );
}
