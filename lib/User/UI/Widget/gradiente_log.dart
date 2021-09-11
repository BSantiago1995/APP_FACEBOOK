import 'package:flutter/material.dart';

class GradienteLog extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
       colors: [Colors.purple.shade900,Colors.purple.shade900],

        begin: const FractionalOffset(1.0, 0.1),

        end: const FractionalOffset(1.0, 0.6),
      ),
      ),
  );
  
  }

}