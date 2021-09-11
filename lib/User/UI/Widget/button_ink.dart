import 'package:flutter/material.dart';

class ButtonInk extends StatelessWidget {
  String inkText = 'Click here';
  double sizes = 0;
  // Widget routeLink=Pastel1();
  ButtonInk(this.inkText, this.sizes);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple.shade600,
          borderRadius: BorderRadius.circular(25.0),
        ),

        /* onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> this.routeLink),
        );
      },*/

        margin: EdgeInsets.only(top: sizes),
        constraints: const BoxConstraints.expand(height: 35, width: 250),
        child: Center(
          child: Text(inkText,
              style: const TextStyle(fontSize: 15, color: Colors.white)),
        ),
      ),
    );
  }
}
