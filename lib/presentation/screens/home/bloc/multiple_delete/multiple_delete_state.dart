part of 'multiple_delete_bloc.dart';

@freezed
class MultipleDeleteState with _$MultipleDeleteState {
  const factory MultipleDeleteState.initial() = _Initial;
  const factory MultipleDeleteState.selected(List<String> selectedIds) =
      _Selected;
  const factory MultipleDeleteState.deleting() = _Deleting;
  const factory MultipleDeleteState.success() = _DeleteSuccess;
  const factory MultipleDeleteState.failed() = _DeleteFailure;
}
