import 'package:flutter/material.dart';
import 'package:siclker_admin/screens/authscreens/sign_in_screen.dart';
import 'theme.dart';
import 'package:siclker_admin/main/components/main_screen.dart';

// Import the firebase_core plugin

void main() => runApp(App());

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sickler Admin Panel',
      theme: sicklerLightTheme(context),
      home: const SicklerSignInScreen(),
    );
  }
}
