import 'package:flutter/material.dart';

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

class NoteDetailScreen extends StatelessWidget {
  const NoteDetailScreen({Key? key, required this.note}) : super(key: key);
  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NoteAppBar(
        actions: [
          AppButton(
            child: const Icon(FeatherIcons.edit),
            onPressed: () {},
          ),
          AppButton(
            child: const Icon(FeatherIcons.trash2),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacings.xl.w,
          vertical: AppSpacings.xl.h,
        ),
        children: [
          Text(
            note.title ?? '',
            softWrap: true,
            style: AppTypography.headline3,
          ),
          SizedBox(height: AppSpacings.xxl.h),
          Text(note.date, style: AppTypography.title),
          SizedBox(height: AppSpacings.xxl.h),
          Text(
            note.description ?? '',
            softWrap: true,
            style: AppTypography.headline6,
          ),
        ],
      ),
    );
  }
}
