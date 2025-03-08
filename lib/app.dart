import 'package:flutter/material.dart';
import 'package:kasirtoko/src/core/core.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: F.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
            TargetPlatform.values,
            value: (_) => const FadeForwardsPageTransitionsBuilder(),
          ),
        ),
      ),
      builder: (context, child) {
        ErrorWidget.builder = (errorDetails) {
          return Container(
            color: Theme.of(context).canvasColor,
            child: Center(child: Text(errorDetails.exception.toString())),
          );
        };
        return child!;
      },
      routerConfig: goRouterConfig,
    );
  }

  // Widget _flavorBanner({required Widget child, bool show = true}) =>
  //     show
  //         ? Banner(
  //           location: BannerLocation.topStart,
  //           message: F.name,
  //           color: Colors.green,
  //           textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0, letterSpacing: 1.0),
  //           textDirection: TextDirection.ltr,
  //           child: child,
  //         )
  //         : Container(child: child);
}
