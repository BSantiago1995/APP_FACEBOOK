import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/User/UI/Widget/text_input.dart';
class Profile extends StatelessWidget{
  final _controllerName=TextEditingController(); //_ antes define el scope o identifica como private para el evento unico, es de dart mas no flutter
  final _controllerHobbies=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
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
          ),//foto
        Container(
          height: 40.0,
          margin: const EdgeInsets.only(top: 15.0),
          child: const Text("Profile",textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontSize: 25.0),),
        ),//camera
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: TextInput( "Name",  TextInputType.name,  _controllerName,1),
        ),//Name
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: TextInput("Hobbies and Interests",  TextInputType.text,  _controllerHobbies, 6),
        ),//Hobbies
        Container(
           margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: MaterialButton(
              minWidth: 100.0,
              height: 40.0,
              onPressed: (){},//conexion base de datos
              color: Colors.blueAccent,
              child:const Text('Save',style: TextStyle(fontSize: 15.0,color: Colors.white),),              
            ),
          ),
        )
        ],
      )
    );
  }
  
} 
//cake tool buscar 