import 'package:flutter/material.dart';


class SocialButton extends StatefulWidget{
  final String textc;
  double widthc=0.0;
  double heigthc=0.0;
  final VoidCallback onPressed;

//constructor
  SocialButton(
    //Key key,
     this.textc,
     this.widthc,
     this.heigthc,
     this.onPressed
);
  @override
  State<StatefulWidget> createState() {
     
      return _SocialButton();
    }
}
class _SocialButton extends State<SocialButton>{
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap:widget.onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        height: widget.heigthc,
        width: widget.widthc,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2623),
            Color(0xC21E1A)
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
          stops: [0.0,0.7],
        )
      ),
      child:Center(
        child: Text(
          widget.textc,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        ),
        ) ,
      )
    );
  }
}