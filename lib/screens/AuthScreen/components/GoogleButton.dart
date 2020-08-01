import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleButton extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _handleGoogleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount googleSignInAccount = await this._googleSignIn.signIn().catchError(() {});
      final GoogleSignInAuthentication googleAuth = await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final AuthResult authResult = await this._auth.signInWithCredential(credential);
      print('Google login: ');
      print(authResult.user);
    } catch (error) {
      final snackBar = SnackBar(content: Text(error.message));
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        this._handleGoogleSignIn(context);
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Row(
          children: <Widget>[
            Icon(MdiIcons.google),
            SizedBox(width: 12),
            Text('Continue with Google', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
