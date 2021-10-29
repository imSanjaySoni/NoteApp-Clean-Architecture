import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/typography.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(this.message, {Key? key}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Center(
        child: Text(
          message,
          style: AppTypography.title.copyWith(
            color: AppColors.description,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
