// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/database.dart' as _i4;
import '../data/repository/note_repository.dart' as _i6;
import '../domain/database/database.dart' as _i3;
import '../domain/repository/note_repository.dart' as _i5;
import '../domain/usecase/add_note_usecase.dart' as _i9;
import '../domain/usecase/delete_note_usecase.dart' as _i10;
import '../domain/usecase/get_note_usecase.dart' as _i11;
import '../domain/usecase/show_notes_usecase.dart' as _i7;
import '../domain/usecase/update_note_usecase.dart' as _i8;
import '../presentation/screens/home/bloc/home_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Database>(() => _i4.DatabaseImplementing());
  gh.lazySingleton<_i5.NoteRepository>(
      () => _i6.NoteRepositoryImplementation(get<_i3.Database>()));
  gh.factory<_i7.ShowAllNotesUsecase>(
      () => _i7.ShowAllNotesUsecase(get<_i5.NoteRepository>()));
  gh.factory<_i8.UpdateNoteUsecase>(
      () => _i8.UpdateNoteUsecase(get<_i5.NoteRepository>()));
  gh.factory<_i9.AddNoteUsecase>(
      () => _i9.AddNoteUsecase(get<_i5.NoteRepository>()));
  gh.factory<_i10.DeleteNoteUsecase>(
      () => _i10.DeleteNoteUsecase(get<_i5.NoteRepository>()));
  gh.factory<_i11.GetNoteUsecase>(
      () => _i11.GetNoteUsecase(get<_i5.NoteRepository>()));
  gh.factory<_i12.HomeBloc>(
      () => _i12.HomeBloc(get<_i7.ShowAllNotesUsecase>()));
  return get;
}
