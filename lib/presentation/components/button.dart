import 'package:flutter/material.dart';

import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

export 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppTypography.buttonLink,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(AppSpacings.m),
          height: 40.w,
          constraints: BoxConstraints(minWidth: 40.w),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(AppSpacings.m.r),
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
