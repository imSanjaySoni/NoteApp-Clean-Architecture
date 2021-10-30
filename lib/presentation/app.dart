import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/common/strings.dart';
import 'package:note_app/di/di.dart';

import 'routes/routes.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  AppRouter get _router => getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designRatio,
      builder: () {
        return MaterialApp.router(
          title: StringConstants.appName,
          debugShowCheckedModeBanner: false,
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: _router.delegate(),
          theme: AppTheme.light,
        );
      },
    );
  }
}
