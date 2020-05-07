
import 'package:casestudy/constantcolor.dart';
import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top: 40),
           height: 55,
           color: Color(0xffEEEEEE),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               Container(
                 margin: EdgeInsets.only(left: 20),
                 height: 30,
                 width: 30,
                 child: Image.asset('images/settings.png',)
               ),
               SizedBox(width: 60),
                Container(
                 height: 30,
                 child: Text('Term of use',
                 style:TextStyle(color: skyblure,fontSize: 21,fontWeight: FontWeight.bold)
                 )
               )

             ],
           ),
         ),
         Container(
           margin: EdgeInsets.only(top: 05),
           height: 55,
           color: Color(0xffEEEEEE),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               Container(
                   margin: EdgeInsets.only(left: 20),
                 height: 30,
                 width: 30,
                 child: Image.asset('images/settings.png',)
               ),
               SizedBox(width: 60),
                Container(
                 height: 30,
                 child: Text('Privacy policy',
                 style:TextStyle(color: skyblure,fontSize: 21,fontWeight: FontWeight.bold)
                 )
               )

             ],
           ),
         )
       ],
     ),  
    );
  }
}