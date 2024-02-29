import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/presentation/routes/routes.gr.dart';

export 'package:auto_route/auto_route.dart';

export 'routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType {
    return const RouteType.custom(
      durationInMilliseconds: 200,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    );
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/notes',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/notes/:noteId',
          page: NoteDetailRoute.page,
        ),
        AutoRoute(
          path: '/add-update-note',
          page: AddUpdateNoteRoute.page,
        ),
      ];
}
