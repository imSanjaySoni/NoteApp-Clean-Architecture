import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/common/constants.dart';
import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/observer.dart';
import 'package:note_app/presentation/screens/add_update_note/bloc/add_update_bloc.dart';
import 'package:note_app/presentation/screens/home/bloc/home_bloc.dart';

import 'di/di.dart';
import 'presentation/app.dart';
import 'presentation/screens/add_update_note/bloc/add_update_form/add_update_form_bloc.dart';
import 'presentation/screens/home/bloc/multiple_delete/multiple_delete_bloc.dart';
import 'presentation/screens/note_detail/bloc/action/note_action_bloc.dart';
import 'presentation/screens/note_detail/bloc/detail/note_detail_bloc.dart';

Future main() async {
  //* observe bloc logs
  Bloc.observer = MyBlocObserver();

  //* inject dependencies
  configureInjection(Environment.dev);

  //* hive local database setup
  await Hive.initFlutter();
  Hive.registerAdapter(NoteDtoAdapter());
  Hive.registerAdapter(TodoDtoAdapter());
  await Hive.openBox(databaseBox);

  //* Update statusbar theme
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>()..add(const HomeEvent.getAllNotes()),
        ),
        BlocProvider<AddUpdateFormBloc>(
          create: (_) => getIt<AddUpdateFormBloc>(),
        ),
        BlocProvider<AddUpdateBloc>(
          create: (_) => getIt<AddUpdateBloc>(),
        ),
        BlocProvider<NoteActionBloc>(
          create: (_) => getIt<NoteActionBloc>(),
        ),
        BlocProvider<NoteDetailBloc>(
          create: (_) => getIt<NoteDetailBloc>(),
        ),
        BlocProvider<MultipleDeleteBloc>(
          create: (_) => getIt<MultipleDeleteBloc>(),
        ),
      ],
      child: const App(),
    ),
  );
}
