import 'package:casestudy/Topicname.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';
import 'constantcolor.dart';
class Webdevelopment extends StatefulWidget {
  @override
  _WebdevelopmentState createState() => _WebdevelopmentState();
}

class _WebdevelopmentState extends State<Webdevelopment> {
        final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'WEB DEVELOPMENT',_scaffoldKey ),
   ),
   body: Container(
     child: Column(
       children: <Widget>[
          InkWell(onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>TopicName()));
    
        },
        child:  Container(
              margin: EdgeInsets.only(top: 8),
              height: 282,
              child: GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 3,),
                scrollDirection: Axis.vertical,  
                itemCount: 6,
              itemBuilder:(BuildContext context,int index2)=>web(
                index2==0? 'php.png': index2==1? 'webdevelopment.png': index2==2?'c++.png':index2==3?'dotnet.png':index2==4?'pythen.png':index2==5?'ruby.png':'webdevelopment.png',
               index2==0? 'learn Php': index2==1?"Web Front End Development": index2==2?'Learn C#':index2==3?'Learn .Netcore':index2==4?'Learn Pythen':index2==5?'Learn Ruby' :'web development',
                index2
              )
              ,),
            )
        ),

     ],),
   ),

    );
  }
    Widget web(String webpic,String webtxt,int index2){
   return Card(
      elevation: 5,
      child:
      Container(
       width: 70,
        child:
   Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 76,
     child: Image.asset('images/$webpic',
          scale: 2.5,),
        ),
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.only(left: 24,),
          height: 30,
          child: Text('$webtxt',
          style: TextStyle(color: grid,fontSize: 14,fontWeight: FontWeight.bold),))
      ],
      ),
      )
    
    );
  
  
  }
}