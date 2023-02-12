import 'package:flutter/material.dart';

import '../../../../../core/const/AppColor.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.title = "DC",
    this.titleColor = AppColor.black,
    this.titleStyle,
    this.fontSize = 60,
  }) : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final Color titleColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      style: titleStyle ??
          textTheme.headline2?.copyWith(
            color: titleColor,
            fontSize: fontSize,
          ),
    );
  }
}
