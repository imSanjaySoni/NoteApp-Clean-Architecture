import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key? key,
    required this.note,
    this.selected = false,
    this.onSelect,
  }) : super(key: key);

  final Note note;
  final bool selected;
  final Function(LongPressDownDetails)? onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressDown: onSelect,
      onTap: () {
        context.router.push(NoteDetailRoute(note: note));
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        constraints: BoxConstraints(
          maxHeight: 300.h,
          minHeight: 100.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacings.l.w,
          vertical: AppSpacings.l.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacings.m.r),
          color: note.color,
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: AutoSizeText(
                    note.title ?? '',
                    presetFontSizes: [16.sp, 14.sp, 12.sp, 10.sp, 8.sp],
                    textScaleFactor: 2,
                    softWrap: true,
                    style: AppTypography.headline6,
                    group: AutoSizeGroup(),
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: AppSpacings.m.h),
                Text(
                  note.date,
                  style: AppTypography.title,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
