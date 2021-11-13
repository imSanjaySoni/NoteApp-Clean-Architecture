part of '../add_update_note_screen.dart';

class _BuildTitleField extends StatelessWidget {
  const _BuildTitleField({
    Key? key,
    required this.state,
    required TextEditingController titleController,
  })  : _titleController = titleController,
        super(key: key);

  final AddUpdateFormState state;
  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            counterText: '',
          ),
          minLines: 1,
          maxLines: maxTitleLinesCount,
          maxLength: maxTitleCharCount,
          onChanged: (value) {
            context.read<AddUpdateFormBloc>().add(
                  AddUpdateFormEvent.titleChanged(value),
                );
          },
        ),
      ],
    );
  }
}

class _BuildDescriptionField extends StatelessWidget {
  const _BuildDescriptionField({
    Key? key,
    required this.state,
    required TextEditingController descriptionController,
  })  : _descriptionController = descriptionController,
        super(key: key);

  final AddUpdateFormState state;
  final TextEditingController _descriptionController;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
