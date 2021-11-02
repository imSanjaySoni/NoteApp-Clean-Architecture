part of 'add_update_form_bloc.dart';

@freezed
class AddUpdateFormEvent with _$AddUpdateFormEvent {
  const factory AddUpdateFormEvent.initialize({
    String? title,
    String? description,
    Color? color,
  }) = _Initialize;

  const factory AddUpdateFormEvent.titleChanged(String value) = _TitleChanged;

  const factory AddUpdateFormEvent.descriptionChanged(String value) =
      _DescriptionChanged;

  const factory AddUpdateFormEvent.colorChanged(Color value) = _ColorChanged;
}
