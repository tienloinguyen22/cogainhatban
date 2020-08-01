import 'package:cogainhatban/screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FacebookButton extends StatelessWidget {
  final FacebookLogin _facebookLogin = FacebookLogin();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _handleFacebookSignin(BuildContext context) async {
    try {
      final facebookLoginResult = await this._facebookLogin.logIn(['email']);

      switch (facebookLoginResult.status) {
        case FacebookLoginStatus.error:
          throw (facebookLoginResult.errorMessage);
          break;
        case FacebookLoginStatus.cancelledByUser:
          print("Cancelled by user");
          break;
        case FacebookLoginStatus.loggedIn:
          print("Logged In success");

          final AuthCredential credential = FacebookAuthProvider.getCredential(
            accessToken: facebookLoginResult.accessToken.token,
          );
          final AuthResult authResult = await this._auth.signInWithCredential(credential);
          print('Facebook login: ');
          print(authResult.user);

          break;
      }
    } catch (error) {
      final snackBar = SnackBar(content: Text(error.message));
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        // this._handleFacebookSignin(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      color: Color(0xff3b5998),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Row(
          children: <Widget>[
            Icon(MdiIcons.facebook, color: Colors.white),
            SizedBox(width: 12),
            Text('Continue with Facebook',
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
