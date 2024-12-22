import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ts_media/core/configs/assets/app_vectors.dart';
import 'package:ts_media/core/configs/theme/app_styles.dart';

class SocialLoginButtons extends StatelessWidget {
  final Axis direction;
  const SocialLoginButtons({super.key, this.direction = Axis.horizontal});

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildButtons(),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildButtons(spacing: 16.0),
      );
    }
  }
}

List<Widget> _buildButtons({double spacing = 0.0}) {
  return [
    OutlinedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppVectors.googleIconLogo,
            height: 24,
            width: 24,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            "Google",
            style: AppStyles.titelText,
          )
        ],
      ),
    ),
    SizedBox(
      height: 30,
      width: 30,
    ),
    OutlinedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppVectors.facebookIconLogo,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Facebook',
              style: AppStyles.titelText.copyWith(
                color: Colors.blue, // Override the color to blue
              ),
            ),
          ],
        ))
  ];
}
