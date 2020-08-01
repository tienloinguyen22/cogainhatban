import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/AuthScreen/AuthScreen.dart';
import './states/AuthenticatedUserState.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthenticatedUserState()),
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
      home: AuthScreen(),
    );
  }
}
