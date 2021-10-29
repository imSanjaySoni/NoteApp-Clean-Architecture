import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:note_app/common/extension/map_index.dart';

import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

class NoteAppBar extends StatelessWidget with PreferredSizeWidget {
  const NoteAppBar({
    Key? key,
    this.autoImplementLeading = true,
    this.title,
    this.actions,
  }) : super(key: key);

  final bool autoImplementLeading;
  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(color: AppColors.white),
        brightness: Brightness.light,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppSpacings.xl.w),
        padding: EdgeInsets.symmetric(vertical: AppSpacings.xl.h),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (autoImplementLeading)
                AppButton(
                  child: const Icon(FeatherIcons.chevronLeft),
                  onPressed: () => context.router.pop(),
                ),
              (title != null)
                  ? Expanded(
                      child: Text(
                        title!,
                        style: AppTypography.headline1
                            .copyWith(color: AppColors.white),
                      ),
                    )
                  : const Spacer(),
              if (actions != null) ...{
                ...actions!
                    .mapIndexed(
                      (action, i) => Padding(
                        padding: (i == actions!.length - 1)
                            ? EdgeInsets.zero
                            : EdgeInsets.only(right: AppSpacings.l.w),
                        child: action,
                      ),
                    )
                    .toList(),
              },
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
