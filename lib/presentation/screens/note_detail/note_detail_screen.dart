import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/common/constants.dart';
import 'package:note_app/common/extension/random.dart';

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

import 'bloc/action/note_action_bloc.dart';
import 'bloc/detail/note_detail_bloc.dart';

class NoteDetailScreen extends StatefulWidget {
  const NoteDetailScreen({Key? key, required this.noteId}) : super(key: key);
  final String noteId;

  @override
  State<NoteDetailScreen> createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<NoteDetailBloc>(context)
        .add(NoteDetailEvent.showNote(widget.noteId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteDetailBloc, NoteDetailState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.whenOrNull(
            success: (note) => note.color ?? colors.randomElement,
          ),
          appBar: NoteAppBar(
            actions: state.whenOrNull(
              success: (note) => [
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
                        .read<NoteActionBloc>()
                        .add(NoteActionEvent.deleteNote(note.id!));
                  },
                ),
              ],
            ),
          ),
          body: state.maybeMap(
            error: (error) => ErrorText(error.message ?? ''),
            success: (data) => _LoadedView(note: data.note),
            orElse: () => const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView({
    Key? key,
    required this.note,
  }) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        if (note.hasTodo) ...{
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
    );
  }
}

class _BuildTodoList extends StatelessWidget {
  const _BuildTodoList({Key? key, required this.todoList}) : super(key: key);
  final List<Todo> todoList;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      key: const ValueKey<String>('todo-list'),
      delay: const Duration(milliseconds: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Todo's",
            style: AppTypography.headline6
                .copyWith(decoration: TextDecoration.underline),
          ),
          ListView.builder(
            key: const PageStorageKey('note-todos'),
            shrinkWrap: true,
            itemCount: todoList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final Todo todo = todoList[index];

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
      ),
    );
  }
}
