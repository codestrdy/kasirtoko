import 'package:flutter/material.dart';
import 'package:kasirtoko/src/core/core.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: F.title,
      theme: COSThemes.lightTheme,
      routerConfig: goRouterConfig,
      debugShowCheckedModeBanner: false,
    );
  }

  // Widget _flavorBanner({
  //   required Widget child,
  //   bool show = true,
  // }) =>
  //     show
  //         ? Banner(
  //       child: child,
  //       location: BannerLocation.topStart,
  //       message: F.name,
  //       color: Colors.green.withOpacity(0.6),
  //       textStyle: TextStyle(
  //           fontWeight: FontWeight.w700,
  //           fontSize: 12.0,
  //           letterSpacing: 1.0),
  //       textDirection: TextDirection.ltr,
  //     )
  //         : Container(
  //       child: child,
  //     );
}
