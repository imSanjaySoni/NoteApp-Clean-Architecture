import 'package:flutter/material.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/typography.dart';

extension ContextEx on BuildContext {
  void showToast(
    String message, {
    bool isError = false,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTypography.description.copyWith(color: AppColors.white),
        ),
        backgroundColor: isError ? AppColors.error : AppColors.primary,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
