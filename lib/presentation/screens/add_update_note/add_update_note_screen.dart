import 'package:flutter/material.dart';
import 'package:note_app/common/extension/string.dart';

import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

class AddUpdateNoteScreen extends StatefulWidget {
  const AddUpdateNoteScreen({Key? key}) : super(key: key);

  @override
  _AddUpdateNoteScreenState createState() => _AddUpdateNoteScreenState();
}

class _AddUpdateNoteScreenState extends State<AddUpdateNoteScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NoteAppBar(
        actions: [
          AppButton(
            child: const Text('Save'),
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
          Stack(
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
                maxLength: 150,
                minLines: 1,
                maxLines: 10,
                onChanged: (text) {
                  setState(() {
                    print(_titleController.text.isEmptyString);
                  });
                },
              ),
            ],
          ),
          Stack(
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
        ],
      ),
    );
  }
}
