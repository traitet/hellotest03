// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class SignInGooglePage extends StatefulWidget {
//   SignInGooglePage({Key key}) : super(key: key);

//   @override
//   _SignInGooglePageState createState() => _SignInGooglePageState();
// }

// class _SignInGooglePageState extends State<SignInGooglePage> {
//   @override
//   Widget build(BuildContext context) {
//       return InkWell(
//           child: Container(
//               constraints: BoxConstraints.expand(height: 50),
//               child: Text("Login with Google ",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 18, color: Colors.blue[600])),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16), color: Colors.white),
//               margin: EdgeInsets.only(top: 12),
//               padding: EdgeInsets.all(12)),
//           onTap: () => loginWithGoogle(context));
//     }



    
// }


// Future loginWithGoogle(BuildContext context) async {
//     GoogleSignIn _googleSignIn = GoogleSignIn(
//       scopes: [
//         'https://www.googleapis.com/auth/contacts.readonly',
//       ],
//     );
//     GoogleSignInAccount user = await _googleSignIn.signIn();
//     GoogleSignInAuthentication userAuth = await user.authentication;
 
//     await _auth.signInWithCredential(GoogleAuthProvider.getCredential(
//         idToken: userAuth.idToken, accessToken: userAuth.accessToken));
//         //checkAuth(context); // after success route to home.
//   }