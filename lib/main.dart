import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/common/constants.dart';
import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/presentation/screens/add_update_note/bloc/add_update_bloc.dart';
import 'package:note_app/presentation/screens/home/bloc/home_bloc.dart';

import 'di/di.dart';
import 'presentation/app.dart';
import 'presentation/screens/add_update_note/bloc/add_update_form/add_update_form_bloc.dart';
import 'presentation/screens/note_detail/bloc/note_detail_bloc.dart';

Future main() async {
  //* inject dependencies
  configureInjection(Environment.dev);

  //* hive local database setup
  await Hive.initFlutter();
  Hive.registerAdapter(NoteDtoAdapter());
  await Hive.openBox(databaseBox, keyComparator: _reverseOrder);

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
          create: (_) => AddUpdateFormBloc(),
        ),
        BlocProvider<AddUpdateBloc>(
          create: (_) => getIt<AddUpdateBloc>(),
        ),
        BlocProvider<NoteDetailBloc>(
          create: (_) => getIt<NoteDetailBloc>(),
        ),
      ],
      child: const App(),
    ),
  );
}

///* get hive data in reverseOrder
int _reverseOrder(k1, k2) {
  if (k1 is int) {
    if (k2 is int) {
      if (k1 > k2) {
        return -1;
      } else if (k1 < k2) {
        return 1;
      } else {
        return 0;
      }
    } else {
      return -1;
    }
  }
  return -1;
}
