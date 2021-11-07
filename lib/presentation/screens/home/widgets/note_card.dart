import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key? key,
    required this.note,
    this.selected = false,
    this.onSelect,
    this.onTap,
  }) : super(key: key);

  final Note note;
  final bool selected;
  final Function()? onSelect;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(AppSpacings.m),
      color: note.color,
      child: InkWell(
        splashColor: Colors.black12,
        onLongPress: onSelect,
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 300,
            minHeight: 100,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacings.l,
            vertical: AppSpacings.l,
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
                    style: AppTypography.description
                        .copyWith(color: Colors.black87),
                  ),
                ],
              ),
              if (selected)
                Align(
                  alignment: Alignment.topRight,
                  heightFactor: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 20,
                          color: note.color ?? AppColors.primary,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FeatherIcons.check,
                        color: note.color,
                        size: 20,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
