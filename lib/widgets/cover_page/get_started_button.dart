import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:recipe_app/res/mix.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pressable(
      variant: startedButton,
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          TextMix(
            'Get Started',
          ),
          SizedBox(
            width: 8,
          ),
          Box(
            variant: buttonIcon,
            child: IconMix(
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}
