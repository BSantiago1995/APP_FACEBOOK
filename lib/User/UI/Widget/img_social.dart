import 'package:flutter/material.dart';

class ImgSocial extends StatelessWidget{
  String pathImage="assets/img/login.png";
  double topI=0,leftI=0;
  ImgSocial(this.pathImage,this.topI,this.leftI);
 @override
  Widget build(BuildContext context) {
  return Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.only(top: topI, left: leftI),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            image: AssetImage(pathImage),
           
          ),
           borderRadius:const BorderRadius.all(Radius.circular(50.0)),
        ),
      );
  
  }

}