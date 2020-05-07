import 'package:flutter/material.dart';

import 'constantcolor.dart';
class Gridandlist extends StatefulWidget {
  @override
  _GridandlistState createState() => _GridandlistState();
}
String pic;
String txt;
int index;
class _GridandlistState extends State<Gridandlist> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child:
      Container(
       width: 100,
        child:
   Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 40,
                  child: Image.asset('images/$pic',
          scale: 2,),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 15),
          height: 30,
          child: Text('$txt',
         style: TextStyle(color: grid,fontSize: 14,fontWeight: FontWeight.bold),))
    
      ],
      ),
      )
    
    );
  }
}