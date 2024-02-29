import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/typography.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(this.message, {super.key});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: AppTypography.title.copyWith(
          color: AppColors.description,
        ),
        textAlign: TextAlign.center,
      ),
    ).animate().fadeIn().scale();
  }
}
