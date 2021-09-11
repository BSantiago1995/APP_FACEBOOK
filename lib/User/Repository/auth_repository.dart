import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_facebook/User/Repository/auth_firebase.dart';

class AuthRepository{
  final _authFirebase= AuthFireBase();
    Future <UserCredential?> singInFirebase() => _authFirebase.signInWithFacebook();
}