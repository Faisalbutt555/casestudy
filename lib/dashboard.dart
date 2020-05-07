
import 'package:flutter/material.dart';

import 'appbar.dart';
import 'categories.dart';
import 'constantcolor.dart';
import 'home.dart';
import 'settings.dart';




class DashboardClass extends StatefulWidget {
  @override
  _DashboardClassState createState() => _DashboardClassState();
}

class _DashboardClassState extends State<DashboardClass> {
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int view = 1;


  String bartitle= 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  key: _scaffoldKey,
        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true, '$bartitle',_scaffoldKey ),
   ),


     body: view==1?Home():view==2? Categories():Setting(),

      bottomNavigationBar: bottomBar(),
      
    );
  }


Widget bottomBar(){
  return Container(
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


        setState(() {
       bartitle ='HOME';
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
    bartitle= 'CATAGORIES';
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
      
         setState(() {
          bartitle= 'SETTINGS';
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