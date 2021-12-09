import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/mix.dart';
import 'package:recipe_app/res/palette.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return searchRow.row(
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
    );
  }
}
