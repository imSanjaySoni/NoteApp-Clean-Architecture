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
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacings.xl,
          vertical: AppSpacings.xl,
        ),
        children: [
          FadeInDown(
            delay: const Duration(milliseconds: 100),
            child: Text(
              note.title ?? '',
              softWrap: true,
              style: AppTypography.headline3,
            ),
          ),
          const SizedBox(height: AppSpacings.xxl),
          FadeInDown(
            delay: const Duration(milliseconds: 200),
            child: Text(
              note.date,
              style: AppTypography.description.copyWith(color: Colors.black87),
            ),
          ),
          const SizedBox(height: AppSpacings.xxl),
          FadeInDown(
            delay: const Duration(milliseconds: 400),
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
