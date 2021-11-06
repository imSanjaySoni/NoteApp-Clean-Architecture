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
        context.router.push(NoteDetailRoute(noteId: note.id!));
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        constraints: const BoxConstraints(
          maxHeight: 300,
          minHeight: 100,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacings.l,
          vertical: AppSpacings.l,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacings.m),
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
                    presetFontSizes: const [16, 14, 12, 10, 8],
                    textScaleFactor: 2,
                    softWrap: true,
                    style: AppTypography.headline6,
                    group: AutoSizeGroup(),
                    overflow: TextOverflow.fade,
                  ),
                ),
                const SizedBox(height: AppSpacings.m),
                Text(
                  note.date,
                  style:
                      AppTypography.description.copyWith(color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
