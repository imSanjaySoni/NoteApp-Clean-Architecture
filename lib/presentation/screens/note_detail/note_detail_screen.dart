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
          //* Show Note Title
          FadeInDown(
            delay: const Duration(milliseconds: 100),
            child: SelectableText(
              note.title ?? '',
              style: AppTypography.headline3,
            ),
          ),
          const SizedBox(height: AppSpacings.l),

          //* Show Note Update/Add time
          FadeInDown(
            delay: const Duration(milliseconds: 200),
            child: SelectableText(
              note.date,
              style: AppTypography.description.copyWith(color: Colors.black87),
            ),
          ),
          const SizedBox(height: AppSpacings.xxl),

          //* Show todo's list if any
          if (!note.hasTodo) ...{
            _BuildTodoList(todoList: note.todo),
            const SizedBox(height: AppSpacings.xxl),
          },

          //* Note Description
          FadeInDown(
            delay: const Duration(milliseconds: 400),
            child: SelectableText(
              note.description ?? '',
              style: AppTypography.headline6,
            ),
          ),
        ],
      ),
    );
  }
}

final _todoList = [
  Todo(
    completed: true,
    title: 'Code in evening',
  ),
  Todo(
    completed: false,
    title: 'Code in evening',
  ),
];

class _BuildTodoList extends StatelessWidget {
  const _BuildTodoList({Key? key, required this.todoList}) : super(key: key);
  final List<Todo> todoList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Todo's",
          style: AppTypography.headline6
              .copyWith(decoration: TextDecoration.underline),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: _todoList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final Todo todo = _todoList[index];

            return CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              value: todo.completed,
              contentPadding: EdgeInsets.zero,
              title: Text(
                todo.title ?? '',
                style: AppTypography.title.copyWith(
                  decoration:
                      todo.completed! ? TextDecoration.lineThrough : null,
                ),
              ),
              onChanged: (bool? value) {
                //Todo
                // toggle check
              },
            );
          },
        ),
      ],
    );
  }
}
