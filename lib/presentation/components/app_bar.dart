import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:note_app/common/constants.dart';
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
    this.systemUiOverlayStyle = SystemUiOverlayStyle.dark,
  }) : super(key: key);

  final bool autoImplementLeading;
  final String? title;
  final List<Widget>? actions;
  final SystemUiOverlayStyle systemUiOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: systemUiOverlayStyle,
      child: FadeInDown(
        duration: animationDuration,
        child: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(color: AppColors.white),
            brightness: Brightness.light,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: AppSpacings.xl),
            padding: const EdgeInsets.symmetric(vertical: AppSpacings.xl),
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
                                : const EdgeInsets.only(right: AppSpacings.l),
                            child: action,
                          ),
                        )
                        .toList(),
                  },
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
