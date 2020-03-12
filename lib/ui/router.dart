import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'about/screen.dart';
import 'account/screen.dart';
import 'home/screen.dart';
import 'settings/screen.dart';

class Routes {
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(handlerFunc: (context, params) {
      debugPrint("ROUTE WAS NOT FOUND !!!");
      return RouteNotFound();
    });
    router.define(
      '/',
      handler: Handler(handlerFunc: (_, params) => HomeScreen()),
    );
    router.define(
      '/home',
      transitionType: TransitionType.materialFullScreenDialog,
      handler: Handler(handlerFunc: (_, params) {
        return HomeScreen();
      }),
    );
    router.define(
      '/account',
      transitionType: TransitionType.materialFullScreenDialog,
      handler: Handler(handlerFunc: (_, params) {
        return AccountScreen();
      }),
    );
    router.define(
      '/account/:id',
      transitionType: TransitionType.materialFullScreenDialog,
      handler: Handler(handlerFunc: (_, params) {
        String id = params["id"]?.first;
        return AccountScreen(id: id);
      }),
    );
    router.define(
      '/about',
      transitionType: TransitionType.materialFullScreenDialog,
      handler: Handler(handlerFunc: (_, params) {
        return AboutScreen();
      }),
    );
    router.define(
      '/settings',
      transitionType: TransitionType.materialFullScreenDialog,
      handler: Handler(handlerFunc: (_, params) {
        return SettingsScreen();
      }),
    );
  }
}

class RouteNotFound extends StatelessWidget {
  const RouteNotFound({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text(
            '404',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
