// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/database.dart' as _i7;
import '../data/repository/note_repository.dart' as _i11;
import '../domain/database/database.dart' as _i6;
import '../domain/repository/note_repository.dart' as _i10;
import '../domain/usecase/add_note_usecase.dart' as _i14;
import '../domain/usecase/delete_note_usecase.dart' as _i15;
import '../domain/usecase/get_note_usecase.dart' as _i16;
import '../domain/usecase/show_notes_usecase.dart' as _i12;
import '../domain/usecase/update_note_usecase.dart' as _i13;
import '../domain/usecase/usecase.dart' as _i4;
import '../presentation/routes/routes.dart' as _i5;
import '../presentation/screens/add_update_note/bloc/add_update_bloc.dart'
    as _i3;
import '../presentation/screens/home/bloc/home_bloc.dart' as _i8;
import '../presentation/screens/note_detail/bloc/note_detail_bloc.dart' as _i9;
import 'module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerCoreDependencies = _$RegisterCoreDependencies();
  gh.factory<_i3.AddUpdateBloc>(() => _i3.AddUpdateBloc(
      get<_i4.AddNoteUsecase>(), get<_i4.UpdateNoteUsecase>()));
  gh.factory<_i5.AppRouter>(() => registerCoreDependencies.appRouter);
  gh.lazySingleton<_i6.Database>(() => _i7.DatabaseImplementing());
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(get<_i4.ShowAllNotesUsecase>()));
  gh.factory<_i9.NoteDetailBloc>(
      () => _i9.NoteDetailBloc(get<_i4.DeleteNoteUsecase>()));
  gh.lazySingleton<_i10.NoteRepository>(
      () => _i11.NoteRepositoryImplementation(get<_i6.Database>()));
  gh.factory<_i12.ShowAllNotesUsecase>(
      () => _i12.ShowAllNotesUsecase(get<_i10.NoteRepository>()));
  gh.factory<_i13.UpdateNoteUsecase>(
      () => _i13.UpdateNoteUsecase(get<_i10.NoteRepository>()));
  gh.factory<_i14.AddNoteUsecase>(
      () => _i14.AddNoteUsecase(get<_i10.NoteRepository>()));
  gh.factory<_i15.DeleteNoteUsecase>(
      () => _i15.DeleteNoteUsecase(get<_i10.NoteRepository>()));
  gh.factory<_i16.GetNoteUsecase>(
      () => _i16.GetNoteUsecase(get<_i10.NoteRepository>()));
  return get;
}

class _$RegisterCoreDependencies extends _i17.RegisterCoreDependencies {}
