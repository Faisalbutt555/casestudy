import 'package:casestudy/categories.dart';
import 'package:casestudy/constantcolor.dart';
import 'package:casestudy/serachbar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
   // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return 
  //   Scaffold(
  //      key: _scaffoldKey,
  //       drawer: DrawerPage(context),
  //       appBar: PreferredSize(
  //           preferredSize: Size.fromHeight(90), // here the desired height
  //           child: AppBarClass(context,true,'HOME',_scaffoldKey ),
  //  ),
  //     body: 
      
      SingleChildScrollView(
              child: Container(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15),
              child:Searchbar(),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 14),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Popular Categories',
    style: TextStyle(color: skyblure,fontWeight: FontWeight.bold,fontSize: 17),)
 
              ],)
   ),

      InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
      },
      child: Container(
              margin: EdgeInsets.only(top: 8),
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,  
                itemCount: 12,
              itemBuilder:(BuildContext context,int index)=>horizentallistview(
                index==0? 'painting.png': index==1? 'android.png': index==2?'maths.png':index==3?'web.png':'web.png',
               index==0? 'Painting': index==1?"Learn Android": index==2?'Learn Mathematicss': index==3?'Web Development':'web',
                index
              )
              ,),
            ),
               ) ,      Container(
              margin: EdgeInsets.only(left:20,top: 14),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('All courses',
    style: TextStyle(color: skyblure,fontWeight: FontWeight.bold,fontSize: 17),)
              ],)
             ),
             Container(
              margin: EdgeInsets.only(top: 8),
              height: 262,
              child: GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 3,),
                scrollDirection: Axis.vertical,  
                itemCount: 12,
              itemBuilder:(BuildContext context,int index2)=>verticllistview(
                index2==0? 'androidlearning.png': index2==1? 'webdevelopment.png': index2==2?'uidesigning.png':index2==3?'learnswift.png':index2==4?'graphic designer.png':index2==5?'learningpainting.png':'webdevelopment.png',
               index2==0? 'Android learning': index2==1?"Web Development": index2==2?'UI/UX Designing':index2==3?'Learn Swift':index2==4?'Graphic Designing':index2==5?'Learn Painting' :'web development',
                index2
              )
              ,),
            ),
          
          ],
        ),
       // ),
      ),
   //bottomNavigationBar: Bottomappbar(),
    );    
  }
  Widget verticllistview(String pic2,String txt2, int index2){
    return Card(
      elevation: 7,
      child:
      Container(
       width: 90,
        child:
   Column(
     mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 76,
     child: Image.asset('images/$pic2',
          scale: 3,),
        ),
        SizedBox(height: 13,),
        Container(
          height: 30,
          child: Text('$txt2',
          style: TextStyle(color: grid,fontSize: 14,fontWeight: FontWeight.bold),))
      ],
      ),
      )
    
    );
  
  }
  Widget horizentallistview(String pic,String txt, int index){
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