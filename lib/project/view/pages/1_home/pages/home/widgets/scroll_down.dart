
import 'package:flutter/material.dart';

import '../../../../../../../core/const/AppString.dart';
import '../../../../../../../core/values/values.dart';
import '../../../widgets/spaces.dart';

class ScrollDownButton extends StatelessWidget {
  const ScrollDownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: Text(
            AppString.SCROLL_DOWN.toUpperCase(),
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 12,
                  letterSpacing: 1.7,
                ),
          ),
        ),
        SpaceH16(),
        Image.asset(
          ImagePath.ARROW_DOWN,
          height: 24,
        ),
      ],
    );
  }
}
