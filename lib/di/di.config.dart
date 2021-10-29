// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/database.dart' as _i6;
import '../data/repository/note_repository.dart' as _i9;
import '../domain/database/database.dart' as _i5;
import '../domain/repository/note_repository.dart' as _i8;
import '../domain/usecase/add_note_usecase.dart' as _i12;
import '../domain/usecase/delete_note_usecase.dart' as _i13;
import '../domain/usecase/get_note_usecase.dart' as _i14;
import '../domain/usecase/show_notes_usecase.dart' as _i10;
import '../domain/usecase/update_note_usecase.dart' as _i11;
import '../domain/usecase/usecase.dart' as _i4;
import '../presentation/screens/add_update_note/bloc/add_update_bloc.dart'
    as _i3;
import '../presentation/screens/home/bloc/home_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddUpdateBloc>(() => _i3.AddUpdateBloc(
      get<_i4.AddNoteUsecase>(), get<_i4.UpdateNoteUsecase>()));
  gh.lazySingleton<_i5.Database>(() => _i6.DatabaseImplementing());
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(get<_i4.ShowAllNotesUsecase>()));
  gh.lazySingleton<_i8.NoteRepository>(
      () => _i9.NoteRepositoryImplementation(get<_i5.Database>()));
  gh.factory<_i10.ShowAllNotesUsecase>(
      () => _i10.ShowAllNotesUsecase(get<_i8.NoteRepository>()));
  gh.factory<_i11.UpdateNoteUsecase>(
      () => _i11.UpdateNoteUsecase(get<_i8.NoteRepository>()));
  gh.factory<_i12.AddNoteUsecase>(
      () => _i12.AddNoteUsecase(get<_i8.NoteRepository>()));
  gh.factory<_i13.DeleteNoteUsecase>(
      () => _i13.DeleteNoteUsecase(get<_i8.NoteRepository>()));
  gh.factory<_i14.GetNoteUsecase>(
      () => _i14.GetNoteUsecase(get<_i8.NoteRepository>()));
  return get;
}
