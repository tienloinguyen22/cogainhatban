import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../states/AuthenticatedUserState.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticatedUserState>(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Text('Total price: ${state.authenticatedUser?.email}'),
        );
      },
    );
  }
}
