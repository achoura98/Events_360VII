import 'package:event_360/provider/events.dart';
import 'package:event_360/provider/favs_provider.dart';
import 'package:event_360/route.dart';
import 'package:event_360/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EventModels(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bulletos',
        theme: ThemeData(brightness: Brightness.light),
        //home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
