import 'package:auto_route/auto_route.dart';
import 'package:note_app/presentation/screens/screens.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(path: '/notes', page: HomeScreen),
    AutoRoute(path: '/notes/:noteId', page: NoteDetailScreen),
    AutoRoute(path: 'add-update-note', page: AddUpdateNoteScreen),
  ],
)
class $AppRouter {}
