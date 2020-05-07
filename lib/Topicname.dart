
import 'package:flutter/material.dart';

import 'appbar.dart';
class TopicName extends StatefulWidget {
  @override
  _TopicNameState createState() => _TopicNameState();
}

class _TopicNameState extends State<TopicName> {
  int cardselect = 0;
          final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'TOPIC NAME',_scaffoldKey ),
   ),
      body: 
          Container(
            height: MediaQuery.of(context).size.height,
              child:  ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context,int index){
               return
                      cardselect==index? uperpart():
                carrd(index);}
      ),
            )
      
    );
  }
  Widget uperpart(){
    return  Card(
              
              margin: EdgeInsets.only(left: 20,right: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/upperpartimage.png')
                        )
                      ),
                    margin: EdgeInsets.only(left: 15,
                    top: 10),
                      height: 150,
                      width: MediaQuery.of(context).size.width/1.2,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                     Container(
                       height:30,
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Topic ${cardselect+1}',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff666666)),),
  
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10,left: 20),
                      
                      height: 40,
                      width: MediaQuery.of(context).size.width/1.4,
      child: Text('Lorem ipsum dollor sit amit, conse adipsiing elit, sed do  ut labore et dolore',
       style: TextStyle(fontSize: 12,color: Color(0xff707070)),),
 
    )
                        ],
                      ),
                    )
          


                  ],
                ),
                ),
              ),
    );
  }
 
 
  Widget carrd(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          cardselect = index;
        });
      },
      child: 
    Card(margin: EdgeInsets.only(left: 10,right: 10),
      
      child: 
    Container(
height: 100,
width: MediaQuery.of(context).size.width/1.5 ,
child: Row(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 10),
      width: 100,
      height: 80,
      child:Image.asset('images/php.png',
    )
    ),
    SizedBox(width: 5,),
    Container(
      height: MediaQuery.of(context).size.height/9,
      width: MediaQuery.of(context).size.width/1.6,
    
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[  
 Container(
     margin: EdgeInsets.only(right: 30),
      child: Text('Topic ${index+1}',
      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff666666)),),
    ),
    Container(
      child: Text('Lorem ipsum dollor sit amit, conse adipsiing elit, sed do  ut labore et dolore',
       style: TextStyle(fontSize: 12,color: Color(0xff707070)),),
 
    )
  ],
),
    )
  ],
),
      )) );
  }
}