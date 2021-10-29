import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/presentation/theme/colors.dart';

import 'package:note_app/presentation/theme/spacing.dart';

class ColorsBar extends StatelessWidget {
  const ColorsBar({Key? key, this.selectedColor, required this.onChanged})
      : super(key: key);
  final Color? selectedColor;
  final Function(Color color) onChanged;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: selectedColor,
        child: SizedBox(
          height: kToolbarHeight,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: colors
                  .map(
                    (color) => _ColorBox(
                      color: color,
                      isSelected: selectedColor == color,
                      onTap: () => onChanged(color),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  const _ColorBox({
    Key? key,
    this.isSelected = false,
    this.onTap,
    required this.color,
  }) : super(key: key);

  final bool isSelected;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacings.s),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          shape: const CircleBorder(),
          elevation: isSelected ? 2 : 0.2,
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(AppSpacings.s.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: isSelected
                ? const Icon(
                    FeatherIcons.check,
                    color: AppColors.white,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
