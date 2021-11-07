part of 'multiple_delete_bloc.dart';

@freezed
class MultipleDeleteEvent with _$MultipleDeleteEvent {
  const factory MultipleDeleteEvent.toggleSelect(String id) = _ToggleSelect;
  const factory MultipleDeleteEvent.delete() = _Delete;
  const factory MultipleDeleteEvent.clearAll() = _ClearAll;
}
