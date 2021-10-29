import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/common/constants.dart';

import 'routes/routes.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designRatio,
      builder: () {
        return MaterialApp.router(
          title: 'PriceTracker',
          debugShowCheckedModeBanner: false,
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: _router.delegate(),
          theme: AppTheme.light,
        );
      },
    );
  }
}
