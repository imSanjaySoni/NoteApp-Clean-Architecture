import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/common/strings.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/typography.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
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
          child: Text(
            StringConstants.appName,
            style: AppTypography.headline1.copyWith(color: AppColors.white),
          ).animate().fadeIn(duration: animationDuration),
        ),
      ),
    );
  }
}
