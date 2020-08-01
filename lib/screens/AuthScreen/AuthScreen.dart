import 'package:flutter/material.dart';
import './components/FacebookButton.dart';
import './components/GoogleButton.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/auth-background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 300),
              Text(
                'Discover your nearby friends',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Find all your friends in one place by signin the app quick and easily',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24),
              FacebookButton(),
              SizedBox(height: 4),
              GoogleButton(),
            ],
          ),
        ),
      ),
    );
  }
}
