
import 'package:casestudy/constantcolor.dart';
import 'package:flutter/material.dart';
class AppBarClass extends PreferredSize {
 AppBarClass(BuildContext context,leading,heading, keyScaf,)
     : super(
           preferredSize: Size.fromHeight(0),
          child: Container(
             decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/appbar.png',    
              ),
              fit: BoxFit.cover)
              ),
             child: 
             Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              leading? Container(margin: EdgeInsets.only(left: 10,top: 30),
                child: 
              InkWell(
                 onTap: (){
                  
                    keyScaf.currentState.openDrawer();
                 },
                 child: 
                 Image.asset('images/drawer.png',
                 scale: 3,),
              )):IconButton(onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,
              color: Colors.white,),),
              Container(
                margin: EdgeInsets.only(right: 50,top: 60),
                child:  Text('$heading',
               style: TextStyle(color: Color(0xffFFFFFF),fontSize: 22,fontWeight: FontWeight.bold),),
               ), Container()
            

                ],
             ),
           )
           );
}
class DrawerPage extends PreferredSize {
 DrawerPage(BuildContext context)
     : super(
           preferredSize: Size.fromHeight(0),
           child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width * .7,
               color: Color(0xffFFFFFF),
               child: Container(
                   child: Column(
                 children: <Widget>[
                   Container(
                     height: 180,
                     width: MediaQuery.of(context).size.width/01,
                   decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/drawerinisdecasestudy.png',
                  ),
                    fit: BoxFit.fill),
                    
                    ) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('images/johndoe.png',
                        height: 80,
                         ),
                        SizedBox(height: 10,),
                        Text('John Doe',
                        style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
               ),
               SizedBox(height: 20,),
   Container(
      margin: EdgeInsets.only(top: 6),
                                       height:MediaQuery.of(context).size.height/20,
                      
     child:    ListTile(
            onTap: ()
                {
        //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
               },
           title: Text('Home',
          style: TextStyle(color:skyblure,
      fontSize: 15,fontWeight: FontWeight.bold),
         ),
          leading:Image.asset('images/home-icon-silhouette.png',
        height: 23,
         color: skyblure,
           )
  ),
   ),
    Container(
       margin: EdgeInsets.only(top: 6),
                                       height:MediaQuery.of(context).size.height/20,
                      
      
      child:   ListTile(
            onTap: ()
                {
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerList()));
               },
           title: Text('My Profile',
          style: TextStyle(color:skyblure,
      fontSize: 15,fontWeight: FontWeight.bold),
         ),
          leading:Image.asset('images/man-user.png',
        height: 23,
         color: skyblure,
           )
  ),
    ),
               Container(
                  margin: EdgeInsets.only(top: 6),
                                       height:MediaQuery.of(context).size.height/20,
                      
                 child:     
   
     ListTile(
            onTap: ()
                {
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerList()));
               },
           title: Text('Logout',
          style: TextStyle(color:skyblure,
      fontSize: 15,fontWeight: FontWeight.bold),
         ),
          leading:Image.asset('images/sign-out-option.png',
        height: 23,
         color: skyblure,
           )
  )

               )
                   ],
                 ),
               )
               )
               
               );
}
