import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/User/BLOC/bloc_user.dart';
import 'package:flutter_application_facebook/User/UI/Screem/login_person.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child:MaterialApp(
      title: 'Login',
      home: Login(),
      initialRoute: 'main',
      routes: {
      'main': (context) =>Login(),
     }
    ),
    bloc: Userbloc(),
  );    
    
  }
}