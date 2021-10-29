part of 'add_update_bloc.dart';

@freezed
class AddUpdateState with _$AddUpdateState {
  const factory AddUpdateState.initial() = _Initial;
  const factory AddUpdateState.saved() = _Saved;
  const factory AddUpdateState.saving() = _Saving;
  const factory AddUpdateState.failed({String? message}) = _Failed;
}
