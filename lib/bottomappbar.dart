
import 'package:casestudy/settings.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'constantcolor.dart';
import 'home.dart';
class Bottomappbar extends StatefulWidget {
  @override
  _BottomappbarState createState() => _BottomappbarState();
}

class _BottomappbarState extends State<Bottomappbar> {
 
  int view = 1;
  @override
  Widget build(BuildContext context) {
   return  
   
   Container(
  width: MediaQuery.of(context).size.width,
  height: 50,
  decoration: BoxDecoration(
   borderRadius: BorderRadius.only(
     topRight: Radius.circular(10),
     topLeft:Radius.circular(10),
   ),
   color: skyblure
  ),

child: Row(
  children: <Widget>[
    SizedBox(width: 60,),
    InkWell(
      
      onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

        setState(() {
       
          view=1;
        });
      },
      child: Image.asset('images/home-icon-silhouette.png',
      scale: 3,
      color:view==1?Colors.white:Colors.grey,),
      
    ),
    SizedBox(width: 100,),

     InkWell(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));

         setState(() {
          view = 2;
        
        });
      },
      child: Image.asset('images/bottom2.png',
      scale: 3,
       color:view==2?Colors.white:Colors.grey,),
      
    ),
    SizedBox(width:100,),
     InkWell(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
         setState(() {
          
          view=3;
          
        });
      },
      child: Image.asset('images/settings (1).png',
      scale: 3,
       color:view==3?Colors.white:Colors.grey,),
      
    )
  ],
),

      );
  }
}