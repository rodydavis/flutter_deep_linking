import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'plugins/navigator/navigator.dart';
import 'ui/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = Router();
  @override
  void initState() {
    Routes.configureRoutes(router);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: NavUtils.initialUrl,
      onGenerateRoute: router.generator,
    );
  }
}
