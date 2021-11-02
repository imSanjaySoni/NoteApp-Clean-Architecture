part of 'add_update_form_bloc.dart';

@freezed
abstract class AddUpdateFormState with _$AddUpdateFormState {
  const AddUpdateFormState._();
  factory AddUpdateFormState({
    String? title,
    String? description,
    Color? selectedColor,
  }) = _AddUpdateFormState;

  bool get showTitleHint => title.isEmptyString;

  bool get showDescriptionHint => description.isEmptyString;
}
