import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:note_app/common/constants.dart';
import 'package:note_app/common/strings.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/typography.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback(
      (_) {
        Future.delayed(splashDuration, () {
          context.router.replaceAll(const [HomeRoute()]);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: FadeIn(
            duration: animationDuration,
            child: Text(
              StringConstants.appName,
              style: AppTypography.headline1.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
