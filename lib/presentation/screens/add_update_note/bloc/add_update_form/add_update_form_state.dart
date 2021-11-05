part of 'add_update_form_bloc.dart';

@freezed
class AddUpdateFormState with _$AddUpdateFormState {
  const AddUpdateFormState._();
  factory AddUpdateFormState({
    String? title,
    String? description,
    Color? selectedColor,
    @Default([]) List<Todo> todos,
  }) = _AddUpdateFormState;

  bool get showTitleHint => title.isEmptyString;

  bool get showDescriptionHint => description.isEmptyString;

  bool get hasTodo => todos.isNotEmpty;
}
