import 'package:cogainhatban/screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/AuthScreen/AuthScreen.dart';
import './screens/SplashScreen/SplashScreen.dart';
import './states/AuthenticatedUserState.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthenticatedUserState(),
          lazy: false,
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer<AuthenticatedUserState>(
        builder: (context, state, child) {
          if (state.isInitializing) {
            return SplashScreen();
          } else {
            return state.isAuthenticated ? HomeScreen() : AuthScreen();
          }
          // return SplashScreen();
        },
      ),
    );
  }
}
