part of '../add_update_note_screen.dart';

class _AddTodoTile extends StatelessWidget {
  const _AddTodoTile({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  final VoidCallback? onAdd;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          const SizedBox(width: 12),
          Icon(
            FeatherIcons.plusCircle,
            size: 18,
            color: AppColors.title.withOpacity(0.6),
          ),
          const SizedBox(width: 22),
          Text(
            'Add todo',
            style: AppTypography.title.copyWith(
              color: AppColors.title.withOpacity(0.6),
            ),
          ),
        ],
      ),
      onTap: onAdd,
    );
  }
}

//* Todo list tile
class _TodoFieldTile extends StatefulWidget {
  const _TodoFieldTile({
    Key? key,
    this.value,
    required this.onChanged,
  }) : super(key: key);

  final String? value;
  final Function(String value) onChanged;

  @override
  State<_TodoFieldTile> createState() => _TodoFieldTileState();
}

class _TodoFieldTileState extends State<_TodoFieldTile> {
  late TextEditingController todoController;

  @override
  void initState() {
    super.initState();
    todoController = TextEditingController(text: widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      dense: true,
      value: false,
      contentPadding: EdgeInsets.zero,
      title: TextField(
        style: AppTypography.title,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: 'Todo..',
          hintStyle: AppTypography.title.copyWith(
            color: AppColors.title.withOpacity(0.6),
          ),
        ),
        onChanged: widget.onChanged,
        maxLines: 4,
        minLines: 1,
      ),
      secondary: IconButton(
        iconSize: 18,
        icon: const Icon(
          FeatherIcons.trash2,
          color: Colors.black87,
        ),
        onPressed: () {},
      ),
      onChanged: null,
    );
  }
}

class _BuildTodoListField extends StatelessWidget {
  const _BuildTodoListField({Key? key, required this.state}) : super(key: key);
  final AddUpdateFormState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (state.hasTodo)
          Text(
            "TODO's",
            style: AppTypography.headline6
                .copyWith(decoration: TextDecoration.underline),
          ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: state.todos.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final Todo todo = state.todos[index];

            return _TodoFieldTile(
              value: todo.title,
              onChanged: (value) {},
            );
          },
        ),
        _AddTodoTile(
          onAdd: () {},
        ),
      ],
    );
  }
}
