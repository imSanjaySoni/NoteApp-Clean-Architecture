import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/common/extension/random.dart';
import 'package:note_app/common/strings.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

import 'bloc/add_update_bloc.dart';
import 'bloc/add_update_form/add_update_form_bloc.dart';

part 'widgets/colors_bar.dart';
part 'widgets/text_forms.dart';
part 'widgets/todo_tile.dart';

class AddUpdateNoteScreen extends StatefulWidget {
  const AddUpdateNoteScreen({Key? key, this.note}) : super(key: key);
  final Note? note;

  @override
  State<AddUpdateNoteScreen> createState() => _AddUpdateNoteScreenState();
}

class _AddUpdateNoteScreenState extends State<AddUpdateNoteScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController(text: widget.note?.title);
    _descriptionController = TextEditingController(text: widget.note?.description);

    context.read<AddUpdateFormBloc>().add(
          AddUpdateFormEvent.initialize(
            title: widget.note?.title,
            description: widget.note?.description,
            color: widget.note?.color ?? colors.randomElement,
            todos: widget.note?.todos,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddUpdateFormBloc, AddUpdateFormState>(
      builder: (ctx, state) {
        return Stack(
          children: [
            _BuildForm(
              widget: widget,
              state: state,
              titleController: _titleController,
              descriptionController: _descriptionController,
            ),

            //* show overlay screen while saving.
            context
                .watch<AddUpdateBloc>()
                .state
                .maybeMap(
                  orElse: () => const SizedBox.shrink(),
                  saving: (_) => Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                )
                .animate()
                .fadeIn()
                .shimmer(),
          ],
        );
      },
    );
  }
}

class _BuildForm extends StatelessWidget {
  const _BuildForm({
    Key? key,
    required this.widget,
    required TextEditingController titleController,
    required TextEditingController descriptionController,
    required this.state,
  })  : _titleController = titleController,
        _descriptionController = descriptionController,
        super(key: key);

  final AddUpdateNoteScreen widget;
  final TextEditingController _titleController;
  final TextEditingController _descriptionController;
  final AddUpdateFormState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: state.selectedColor,
      bottomNavigationBar: ColorsBar(
        selectedColor: state.selectedColor,
        onChanged: (Color color) {
          context.read<AddUpdateFormBloc>().add(AddUpdateFormEvent.colorChanged(color));
        },
      ),
      appBar: NoteAppBar(
        actions: [
          AppButton(
            isLoading: context.watch<AddUpdateBloc>().state.maybeMap(
                  orElse: () => false,
                  saving: (_) => true,
                ),
            child: const Text('  Save  '),
            onPressed: () => _addOrUpdateNote(context),
          ),
        ],
      ),
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacings.xl,
          vertical: AppSpacings.xl,
        ),
        children: [
          //* Add/Update Note title
          _BuildTitleField(
            state: state,
            titleController: _titleController,
          ),
          const SizedBox(height: AppSpacings.xl),

          //* Add/Update todo list.
          _BuildTodoListField(state: state),
          const SizedBox(height: AppSpacings.xl),

          //* Add/Update note description.
          _BuildDescriptionField(
            state: state,
            descriptionController: _descriptionController,
          ),
        ],
      ),
    );
  }

  void _addOrUpdateNote(BuildContext context) {
    if (widget.note == null) {
      context.read<AddUpdateBloc>().add(
            AddUpdateEvent.addNote(
              Note(
                title: _titleController.text,
                description: _descriptionController.text,
                color: state.selectedColor,
                dateTime: DateTime.now(),
                todos: state.todos,
              ),
            ),
          );
    } else {
      context.read<AddUpdateBloc>().add(
            AddUpdateEvent.updateNote(
              Note(
                id: widget.note!.id!,
                title: _titleController.text,
                description: _descriptionController.text,
                color: state.selectedColor,
                dateTime: DateTime.now(),
                todos: state.todos,
              ),
              widget.note!.id!,
            ),
          );
    }
  }
}
