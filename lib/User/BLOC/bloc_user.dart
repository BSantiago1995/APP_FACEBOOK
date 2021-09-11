import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_application_facebook/User/Repository/auth_repository.dart';

class Userbloc implements Bloc{
   final _authRepository= AuthRepository();
    Stream<User?> streamFirebase=FirebaseAuth.instance.authStateChanges();
    Stream<User?>? get authStatus => streamFirebase;
    
    Future <UserCredential?>? singIn(){
      return _authRepository.singInFirebase();
    }
  @override
  void dispose() {
   
  }

}