import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:note_app/common/constants.dart';
import 'package:note_app/common/extension/random.dart';
import 'package:note_app/common/extension/string.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

import 'bloc/add_update_bloc.dart';
import 'widgets/colors_bar.dart';

class AddUpdateNoteScreen extends StatefulWidget {
  const AddUpdateNoteScreen({Key? key, this.note}) : super(key: key);
  final Note? note;

  @override
  _AddUpdateNoteScreenState createState() => _AddUpdateNoteScreenState();
}

class _AddUpdateNoteScreenState extends State<AddUpdateNoteScreen> {
  late Color _selectedColor;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();

    _selectedColor = widget.note?.color ?? colors.randomElement;
    _titleController = TextEditingController(text: widget.note?.title);
    _descriptionController =
        TextEditingController(text: widget.note?.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColor,
      bottomNavigationBar: ColorsBar(
        selectedColor: _selectedColor,
        onChanged: (Color color) => setState(() {
          _selectedColor = color;
        }),
      ),
      appBar: NoteAppBar(
        actions: [
          AppButton(
            child: const Text('  Save  '),
            onPressed: () {
              if (widget.note?.id != null) {
                context.read<AddUpdateBloc>().add(
                      AddUpdateEvent.updateNote(
                        Note(
                          id: widget.note!.id!,
                          color: _selectedColor,
                          dateTime: DateTime.now(),
                          description: _descriptionController.text,
                          title: _titleController.text,
                        ),
                        widget.note!.id!,
                      ),
                    );
              } else {
                context.read<AddUpdateBloc>().add(
                      AddUpdateEvent.addNote(
                        Note(
                          color: _selectedColor,
                          dateTime: DateTime.now(),
                          description: _descriptionController.text,
                          title: _titleController.text,
                        ),
                      ),
                    );
              }
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
          FadeInDown(
            delay: const Duration(milliseconds: 100),
            duration: animationDuration,
            child: Stack(
              children: [
                if (_titleController.text.isEmptyString)
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      'Title',
                      style: AppTypography.headline1,
                      softWrap: true,
                    ),
                  ),
                TextField(
                  controller: _titleController,
                  style: AppTypography.headline1,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  minLines: 1,
                  maxLines: 10,
                  onChanged: (text) {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: AppSpacings.xxl.h),
          FadeInDown(
            delay: const Duration(milliseconds: 400),
            duration: animationDuration,
            child: Stack(
              children: [
                if (_descriptionController.text.isEmptyString)
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      'Type something...',
                      style: AppTypography.headline6,
                      softWrap: true,
                    ),
                  ),
                TextField(
                  controller: _descriptionController,
                  style: AppTypography.headline6,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  minLines: 2,
                  maxLines: 100,
                  onChanged: (text) {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
