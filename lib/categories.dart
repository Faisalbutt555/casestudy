import 'package:casestudy/serachbar.dart';
import 'package:casestudy/webdevelopment.dart';
import 'package:flutter/material.dart';
import 'constantcolor.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
      
  @override
  Widget build(BuildContext context) { 
    return
      Container(
        child: Column(
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
                 Text('All Categories',
    style: TextStyle(color: skyblure,fontWeight: FontWeight.bold,fontSize: 17),)
 
              ],
              )
              ),
InkWell(onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Webdevelopment()));
},
child:
              Container(
              margin: EdgeInsets.only(top: 8),
              height: MediaQuery.of(context).size.height/1.65,
              child: GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 3,),
                scrollDirection: Axis.vertical,  
                itemCount: 12,
              itemBuilder:(BuildContext context,int index2)=>categorygrid(
                index2==0? 'web.png': index2==1? 'android.png': index2==2?'maths.png':index2==3?'painting.png':index2==4?'chemistery.png':index2==5?'physics.png':index2==6?'ui.png':index2==7?'socialmedia.png':index2==8?'database.png':index2==9?'flowers.png':'webdevelopment.png',
               index2==0? 'Learn Web Development': index2==1?"Learn Android": index2==2?'Learn Mathemetics':index2==3?'Learn Painting':index2==4?'Learn Chemistery':index2==5?'Learn physics':index2==6?'Learn UI/UX Designing': index2==7?'Learn Social Media Marketing':index2==8?'Learn Database':index2==9?'Learn Database':'web development',
                index2
              )
              ,),
            ),
        )
          ],
        ),
      );
    
    
  }
Widget categorygrid(String categpic,String categtxt,int index2){
   return Card(
      elevation: 19,
      child:
      Container(
       width: 70,
        child:
   Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 76,
     child: Image.asset('images/$categpic',
          scale: 2.5,),
        ),
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.only(left: 24,),
          height: 30,
          child: Text('$categtxt',
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