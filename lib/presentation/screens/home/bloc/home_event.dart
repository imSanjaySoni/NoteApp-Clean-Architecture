part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllNotes() = _GetAllNotes;
  const factory HomeEvent.refresh() = _Refresh;
}
