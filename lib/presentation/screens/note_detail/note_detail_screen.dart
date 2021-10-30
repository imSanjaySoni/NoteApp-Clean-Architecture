import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

import 'bloc/note_detail_bloc.dart';

class NoteDetailScreen extends StatelessWidget {
  const NoteDetailScreen({Key? key, required this.note}) : super(key: key);
  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: note.color,
      appBar: NoteAppBar(
        actions: [
          AppButton(
            child: const Icon(FeatherIcons.edit),
            onPressed: () {
              context.router.push(AddUpdateNoteRoute(note: note));
            },
          ),
          AppButton(
            child: const Icon(FeatherIcons.trash2),
            onPressed: () {
              context
                  .read<NoteDetailBloc>()
                  .add(NoteDetailEvent.deleteNote(note.id!));
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacings.xl.w,
          vertical: AppSpacings.xl.h,
        ),
        children: [
          FadeInLeft(
            child: Text(
              note.title ?? '',
              softWrap: true,
              style: AppTypography.headline3,
            ),
          ),
          SizedBox(height: AppSpacings.xxl.h),
          FadeInDown(
            child: Text(note.date, style: AppTypography.description),
          ),
          SizedBox(height: AppSpacings.xxl.h),
          FadeInRight(
            child: Text(
              note.description ?? '',
              softWrap: true,
              style: AppTypography.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
