// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/database.dart' as _i8;
import '../data/repository/note_repository.dart' as _i14;
import '../domain/database/database.dart' as _i7;
import '../domain/repository/note_repository.dart' as _i13;
import '../domain/usecase/add_note_usecase.dart' as _i17;
import '../domain/usecase/delete_multiple_notes.dart' as _i18;
import '../domain/usecase/delete_note_usecase.dart' as _i19;
import '../domain/usecase/get_note_usecase.dart' as _i20;
import '../domain/usecase/show_notes_usecase.dart' as _i15;
import '../domain/usecase/update_note_usecase.dart' as _i16;
import '../domain/usecase/usecase.dart' as _i4;
import '../presentation/routes/routes.dart' as _i6;
import '../presentation/screens/add_update_note/bloc/add_update_bloc.dart'
    as _i3;
import '../presentation/screens/add_update_note/bloc/add_update_form/add_update_form_bloc.dart'
    as _i5;
import '../presentation/screens/home/bloc/home_bloc.dart' as _i9;
import '../presentation/screens/home/bloc/multiple_delete/multiple_delete_bloc.dart'
    as _i10;
import '../presentation/screens/note_detail/bloc/action/note_action_bloc.dart'
    as _i11;
import '../presentation/screens/note_detail/bloc/detail/note_detail_bloc.dart'
    as _i12;
import 'module.dart' as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerCoreDependencies = _$RegisterCoreDependencies();
  gh.factory<_i3.AddUpdateBloc>(() => _i3.AddUpdateBloc(
      get<_i4.AddNoteUsecase>(), get<_i4.UpdateNoteUsecase>()));
  gh.factory<_i5.AddUpdateFormBloc>(
      () => _i5.AddUpdateFormBloc(get<_i3.AddUpdateBloc>()));
  gh.factory<_i6.AppRouter>(() => registerCoreDependencies.appRouter);
  gh.lazySingleton<_i7.Database>(() => _i8.DatabaseImplementing());
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(get<_i4.ShowAllNotesUsecase>()));
  gh.factory<_i10.MultipleDeleteBloc>(
      () => _i10.MultipleDeleteBloc(get<_i4.DeleteMultipleNotesUsecase>()));
  gh.factory<_i11.NoteActionBloc>(
      () => _i11.NoteActionBloc(get<_i4.DeleteNoteUsecase>()));
  gh.factory<_i12.NoteDetailBloc>(() => _i12.NoteDetailBloc(
      get<_i4.GetNoteUsecase>(), get<_i4.UpdateNoteUsecase>()));
  gh.lazySingleton<_i13.NoteRepository>(
      () => _i14.NoteRepositoryImplementation(get<_i7.Database>()));
  gh.factory<_i15.ShowAllNotesUsecase>(
      () => _i15.ShowAllNotesUsecase(get<_i13.NoteRepository>()));
  gh.factory<_i16.UpdateNoteUsecase>(
      () => _i16.UpdateNoteUsecase(get<_i13.NoteRepository>()));
  gh.factory<_i17.AddNoteUsecase>(
      () => _i17.AddNoteUsecase(get<_i13.NoteRepository>()));
  gh.factory<_i18.DeleteMultipleNotesUsecase>(
      () => _i18.DeleteMultipleNotesUsecase(get<_i13.NoteRepository>()));
  gh.factory<_i19.DeleteNoteUsecase>(
      () => _i19.DeleteNoteUsecase(get<_i13.NoteRepository>()));
  gh.factory<_i20.GetNoteUsecase>(
      () => _i20.GetNoteUsecase(get<_i13.NoteRepository>()));
  return get;
}

class _$RegisterCoreDependencies extends _i21.RegisterCoreDependencies {}
