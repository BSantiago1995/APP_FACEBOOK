import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/User/BLOC/bloc_user.dart';
import 'package:flutter_application_facebook/User/UI/Screem/profile_person.dart';
import 'package:flutter_application_facebook/User/UI/Widget/social_button.dart';
import 'package:flutter_application_facebook/User/UI/Widget/text_input.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget{
  late Userbloc blocUser;
  final _controllerUserName=TextEditingController(); //_ antes define el scope o identifica como private para el evento unico, es de dart mas no flutter
  final _controllerPassword=TextEditingController();
  
  @override
  Widget build(BuildContext context){
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }
  Widget _controlSession(){
    return StreamBuilder(
      stream: blocUser.authStatus,
      builder: (
        BuildContext context,
        AsyncSnapshot snapshot
      ){
        if(!snapshot.hasData || snapshot.hasError){
            return loginApp();
        }else{
          return Profile();
        }
      }
      );
  }
  Widget loginApp() {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            margin: const EdgeInsets.only(top:15.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image:AssetImage("assets/img/cam.png"), 
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle
            ),
          ),//Logo
        Container(
          height: 40.0,
          margin: const EdgeInsets.only(top: 15.0),
          child: const Text("Nombre App",textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontSize: 25.0),),
        ),//Name app
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: TextInput( "Username", TextInputType.name, _controllerUserName,1),
        ),//Name
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: TextInput("Password", TextInputType.text, _controllerPassword, 1),
        ),//Hobbies
        Container(
           margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: MaterialButton(
              minWidth: 100.0,
              height: 40.0,
              onPressed: (){},//conexion base de datos
              color: Colors.blueAccent,
              child: const Text('Submit',style: TextStyle(fontSize: 15.0,color: Colors.white),),              
            ),
          ),
        ),
        // ignore: avoid_print
        SocialButton("login whit Facebook", 30, 35, () { blocUser.singIn()?.then((UserCredential? user)=> print("Usted se ha autenticado como ${user?.user}"));})
        ],
      )
    );
  }
  
} 