part of '../add_update_note_screen.dart';

class _AddTodoTile extends StatelessWidget {
  const _AddTodoTile({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  final VoidCallback? onAdd;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Row(
          children: [
            const Icon(
              FeatherIcons.plusCircle,
              size: 18,
              color: AppColors.title,
            ),
            const SizedBox(width: 12),
            Text(
              'Add todo',
              style: AppTypography.headline6,
            ),
          ],
        ),
        onTap: onAdd,
      ),
    );
  }
}

//* Todo list tile
class _TodoFieldTile extends StatefulWidget {
  const _TodoFieldTile({
    Key? key,
    this.value,
    required this.onChanged,
    required this.onRemoved,
  }) : super(key: key);

  final String? value;
  final Function(String value) onChanged;
  final VoidCallback onRemoved;

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
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: TextField(
        controller: todoController,
        style: AppTypography.headline6,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: 'Todo..',
          hintStyle: AppTypography.headline6.copyWith(
            color: AppColors.title.withOpacity(0.6),
          ),
          counterText: '',
        ),
        onChanged: widget.onChanged,
        maxLength: todoMaxCharCount,
        maxLines: 4,
        minLines: 1,
      ),
      trailing: IconButton(
        iconSize: 18,
        icon: const Icon(
          FeatherIcons.trash2,
          color: Colors.black87,
        ),
        onPressed: widget.onRemoved,
      ),
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
        ListView.builder(
          shrinkWrap: true,
          itemCount: state.todos.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final Todo todo = state.todos[index];

            return _TodoFieldTile(
              value: todo.title,
              onChanged: (value) {
                context.read<AddUpdateFormBloc>().add(
                      AddUpdateFormEvent.todoValueChanged(
                        value: value,
                        id: todo.id!,
                      ),
                    );
              },
              onRemoved: () {
                context
                    .read<AddUpdateFormBloc>()
                    .add(AddUpdateFormEvent.deleteTodo(todo.id!));
              },
            );
          },
        ),
        _AddTodoTile(
          onAdd: () {
            context
                .read<AddUpdateFormBloc>()
                .add(const AddUpdateFormEvent.addEmptyTodo());
          },
        ),
      ],
    );
  }
}
