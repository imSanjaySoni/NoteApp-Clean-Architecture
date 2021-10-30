// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../domain/model/note.dart' as _i5;
import '../screens/screens.dart' as _i1;
import 'routes.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashScreen(),
          transitionsBuilder: _i4.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomeScreen(),
          transitionsBuilder: _i4.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    NoteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NoteDetailRouteArgs>();
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.NoteDetailScreen(key: args.key, note: args.note),
          transitionsBuilder: _i4.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AddUpdateNoteRoute.name: (routeData) {
      final args = routeData.argsAs<AddUpdateNoteRouteArgs>(
          orElse: () => const AddUpdateNoteRouteArgs());
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.AddUpdateNoteScreen(key: args.key, note: args.note),
          transitionsBuilder: _i4.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(SplashRoute.name, path: '/'),
        _i2.RouteConfig(HomeRoute.name, path: '/notes'),
        _i2.RouteConfig(NoteDetailRoute.name, path: '/notes/:noteId'),
        _i2.RouteConfig(AddUpdateNoteRoute.name, path: 'add-update-note')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i2.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i1.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/notes');

  static const String name = 'HomeRoute';
}

/// generated route for [_i1.NoteDetailScreen]
class NoteDetailRoute extends _i2.PageRouteInfo<NoteDetailRouteArgs> {
  NoteDetailRoute({_i3.Key? key, required _i5.Note note})
      : super(name,
            path: '/notes/:noteId',
            args: NoteDetailRouteArgs(key: key, note: note),
            rawPathParams: {});

  static const String name = 'NoteDetailRoute';
}

class NoteDetailRouteArgs {
  const NoteDetailRouteArgs({this.key, required this.note});

  final _i3.Key? key;

  final _i5.Note note;
}

/// generated route for [_i1.AddUpdateNoteScreen]
class AddUpdateNoteRoute extends _i2.PageRouteInfo<AddUpdateNoteRouteArgs> {
  AddUpdateNoteRoute({_i3.Key? key, _i5.Note? note})
      : super(name,
            path: 'add-update-note',
            args: AddUpdateNoteRouteArgs(key: key, note: note));

  static const String name = 'AddUpdateNoteRoute';
}

class AddUpdateNoteRouteArgs {
  const AddUpdateNoteRouteArgs({this.key, this.note});

  final _i3.Key? key;

  final _i5.Note? note;
}
