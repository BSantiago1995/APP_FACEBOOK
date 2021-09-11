import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{
  final String hint;
  final TextInputType inputType;
  final TextEditingController controller;
  double top1=0,left1=0;
  int maxlines=1;
  
  TextInput(
   // Key key,
     this.hint,
    this.inputType,
     this.controller,
    //this.left1,
    //this.top1,
    this.maxlines,
    
    );
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 250,
      height: 40,
     // margin: EdgeInsets.only(top: top1, left: left1),
      padding: const EdgeInsets.only(right:40,left: 30),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxlines,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blueAccent,
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white),
          
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
        
      ),
    );
  }
}