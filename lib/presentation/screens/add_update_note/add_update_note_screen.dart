import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:note_app/common/constants.dart';
import 'package:note_app/common/extension/random.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/theme/spacing.dart';
import 'package:note_app/presentation/theme/typography.dart';

import 'bloc/add_update_bloc.dart';
import 'bloc/add_update_form/add_update_form_bloc.dart';
import 'widgets/colors_bar.dart';

class AddUpdateNoteScreen extends StatefulWidget {
  const AddUpdateNoteScreen({Key? key, this.note}) : super(key: key);
  final Note? note;

  @override
  _AddUpdateNoteScreenState createState() => _AddUpdateNoteScreenState();
}

class _AddUpdateNoteScreenState extends State<AddUpdateNoteScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController(text: widget.note?.title);
    _descriptionController =
        TextEditingController(text: widget.note?.description);

    context.read<AddUpdateFormBloc>().add(
          AddUpdateFormEvent.initialize(
            title: widget.note?.title,
            description: widget.note?.description,
            color: widget.note?.color ?? colors.randomElement,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddUpdateFormBloc, AddUpdateFormState>(
      builder: (ctx, state) {
        return Stack(
          children: [
            Scaffold(
              backgroundColor: state.selectedColor,
              bottomNavigationBar: ColorsBar(
                selectedColor: state.selectedColor,
                onChanged: (Color color) {
                  context
                      .read<AddUpdateFormBloc>()
                      .add(AddUpdateFormEvent.colorChanged(color));
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
                    onPressed: () {
                      if (widget.note?.id != null) {
                        context.read<AddUpdateBloc>().add(
                              AddUpdateEvent.updateNote(
                                Note(),
                                widget.note!.id!,
                              ),
                            );
                      } else {
                        context
                            .read<AddUpdateBloc>()
                            .add(AddUpdateEvent.addNote(Note()));
                      }
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
                    duration: animationDuration,
                    child: Stack(
                      children: [
                        if (state.showTitleHint)
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
                          onChanged: (value) {
                            context.read<AddUpdateFormBloc>().add(
                                  AddUpdateFormEvent.titleChanged(value),
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacings.xxl),
                  FadeInDown(
                    delay: const Duration(milliseconds: 400),
                    duration: animationDuration,
                    child: Stack(
                      children: [
                        if (state.showDescriptionHint)
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
                          onChanged: (value) {
                            context.read<AddUpdateFormBloc>().add(
                                  AddUpdateFormEvent.descriptionChanged(value),
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // show overlay screen while saving.
            context.watch<AddUpdateBloc>().state.maybeMap(
                  orElse: () => Container(),
                  saving: (_) => FadeIn(
                    child: Container(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
          ],
        );
      },
    );
  }
}
