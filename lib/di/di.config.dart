// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/repository/note_repository.dart' as _i4;
import '../domain/usecase/get_note_usecase.dart' as _i3;
import '../domain/usecase/show_notes_usecase.dart' as _i5;
import '../presentation/screens/home/bloc/home_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.GetNoteUsecase>(
      () => _i3.GetNoteUsecase(get<_i4.NoteRepository>()));
  gh.factory<_i5.ShowAllNotesUsecase>(
      () => _i5.ShowAllNotesUsecase(get<_i4.NoteRepository>()));
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(get<_i5.ShowAllNotesUsecase>()));
  return get;
}
