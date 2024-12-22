import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ts_media/common/widgets/buttons/app_button.dart';
import 'package:ts_media/core/configs/assets/app_images.dart';
import 'package:ts_media/core/configs/theme/app_styles.dart';
import 'package:ts_media/presentation/intro/wigets/social_login_buttons.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: -45,
          left: -8,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.getStartedBG),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Text("thoughtsketch", style: AppStyles.headText),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Text(
                    "Login With",
                    style: AppStyles.titelText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const SocialLoginButtons(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "or",
                    textAlign: TextAlign.center,
                    style: AppStyles.titelText.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppButton(
                    onPressed: () {},
                    label: "Continue With Email",
                    icon: Icons.email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account yet?",
                        style: AppStyles.titelText.copyWith(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "Create Account",
                            style: AppStyles.titelText
                                .copyWith(color: Colors.blue),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
