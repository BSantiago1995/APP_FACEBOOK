import 'package:flutter/material.dart';

class TextOri extends StatelessWidget{
  String texto_i="hola";
  double sizeLetter=0;
  TextOri(this.texto_i,this.sizeLetter);
 @override
  Widget build(BuildContext context) {
  return Text(
   texto_i,
          style: TextStyle(
              fontSize: sizeLetter,
              color: Colors.white,
              ),
  );
  
  }

}