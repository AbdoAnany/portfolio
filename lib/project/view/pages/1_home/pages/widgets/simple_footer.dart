import 'package:anany_me/core/layout/adaptive.dart';
import 'package:anany_me/core/utils/functions.dart';
import 'package:anany_me/project/view/pages/1_home/pages/widgets/socials.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../../core/const/AppColor.dart';
import '../../../../../../core/const/AppString.dart';
import '../../../../../../core/values/values.dart';
import '../../widgets/animated_line_through_text.dart';
import '../../widgets/spaces.dart';

class SimpleFooter extends StatelessWidget {
  const SimpleFooter({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor = AppColor.black,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? widthOfScreen(context),
      height: height ?? assignHeight(context, 0.2),
      color: backgroundColor,
      child: Center(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.isMobile) {
              return Column(
                children: [
                  Spacer(flex: 2),
                  SimpleFooterSm(),
                  Spacer(),
                ],
              );
            } else {
              return Column(
                children: [
                  Spacer(),
                  SimpleFooterLg(),
                  SpaceH20(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class SimpleFooterSm extends StatelessWidget {
  const SimpleFooterSm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: AppColor.accentColor,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    return Column(
      children: [
        Socials(socialData: Data.socialData),
        SpaceH30(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.COPYRIGHT,
              style: style,
            ),
          ],
        ),
        SpaceH12(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Functions.launchUrl(AppString.DESIGN_LINK);
              },
              child: AnimatedLineThroughText(
                text: AppString.DESIGNED_BY,
                isUnderlinedByDefault: true,
                isUnderlinedOnHover: false,
                hoverColor: AppColor.white,
                coverColor: AppColor.black,
                textStyle: style?.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SpaceH8(),
        BuiltWithFlutter(),
      ],
    );
  }
}

class SimpleFooterLg extends StatelessWidget {
  const SimpleFooterLg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: AppColor.accentColor,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Socials(socialData: Data.socialData),
          ],
        ),
        SpaceH20(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.COPYRIGHT,
              style: style,
            ),
            SpaceW8(),
            InkWell(
              onTap: () {
                Functions.launchUrl(AppString.DESIGN_LINK);
              },
              child: AnimatedLineThroughText(
                text: AppString.DESIGNED_BY,
                isUnderlinedByDefault: true,
                isUnderlinedOnHover: false,
                hoverColor: AppColor.white,
                coverColor: AppColor.black,
                textStyle: style?.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SpaceH8(),
        BuiltWithFlutter(),
      ],
    );
  }
}

class BuiltWithFlutter extends StatelessWidget {
  const BuiltWithFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: AppColor.accentColor,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          AppString.BUILT_WITH_FLUTTER,
          style: style,
        ),
        FlutterLogo(size: 14),
        Text(
          " with ",
          style: style,
        ),
        Icon(
          FontAwesomeIcons.solidHeart,
          size: 14,
          color: AppColor.errorRed,
        )
      ],
    );
  }
}
