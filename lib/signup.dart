import 'package:casestudy/constantcolor.dart';
import 'package:casestudy/dashboard.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name=new TextEditingController();
    TextEditingController email=new TextEditingController();
      TextEditingController password=new TextEditingController();
        TextEditingController confirmpassword=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height/2.7,
            width: 413,
             // child: signuptop(),
            ),
            centerpart(),
             Container(
            height: 170,
            child: bottompart(),
          )
           

          ],
        ),
      ),
      
    );
  }
   Widget signuptop() {
    return Container(
     child: Image.asset('images/signuptop.png',fit: BoxFit.cover,),
    );
  }
    Widget centerpart() {
    return Container(
     
      margin: EdgeInsets.only(top: 9),
      height:250,
      width: MediaQuery.of(context).size.width/1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 15,),
          Text('Sign Up',
           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: skyblure),),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top:17),
                  height: 34,
                  width: 260,
                  decoration: BoxDecoration(
               
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:textfeildcolor)
                  ),
                  child: 
                  TextField(
                    keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                       borderSide: BorderSide.none ,  
                      ),
                      hintText: 'Enter Name',
                       hintStyle: TextStyle(color:Colors.grey),
                      prefixIcon: IconButton(onPressed: (){},
                      icon: Image.asset('images/man-user.png')
                    
                      ),
                     contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                
                ),
                            Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top:11),
                  height: 34,
                  width: 260,
                  decoration: BoxDecoration(
               
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:textfeildcolor)
                  ),
                  child: 
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                       borderSide: BorderSide.none   
                      ),
                      hintText: 'Enter Email',
                       hintStyle: TextStyle(color:Colors.grey),
                      prefixIcon: IconButton(onPressed: (){},
                     // padding: EdgeInsets.only(left: 40),
                      icon: Image.asset('images/email.png')
                    
                      ),
                     contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                
                ),
                            Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top:10),
                  height: 34,
                  width: 260,
                  decoration: BoxDecoration(
               
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:textfeildcolor)
                  ),
                  child: 
                  TextField(
                    keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                       borderSide: BorderSide.none   
                      ),
                      hintText: 'Enter password',
                       hintStyle: TextStyle(color:Colors.grey),
                      prefixIcon: IconButton(onPressed: (){},
                      icon:  Image.asset('images/padlock.png')
                    
                      ),
                     contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                
                ),
   
             Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                  height: 34,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:textfeildcolor)
                  ),
                  child: 
                  TextField(
                    keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                       borderSide: BorderSide.none   
                      ),
                      hintText: 'confirm Password',
                       hintStyle: TextStyle(color:Colors.grey),
                      prefixIcon: IconButton(onPressed: (){},
                      icon: Image.asset('images/padlock.png')
                    
                      ),
                     contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                
                ),
         

        ]
        )
        ) ;
  }
  Widget bottompart() {
    return Container(
   
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'images/orignalwave.png',
        ),
        fit: BoxFit.cover,
      )),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
               Container(
          margin: EdgeInsets.only(top:0,right: 95,bottom: 40),
          child: 
         Row(
           crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
  RaisedButton(
    color: skyblure,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
    ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardClass()));
    },
child: Text('Sign up',
style: TextStyle(fontSize: 18,color:Colors.white),
),

  )
  ],
         )
 
        ),
              Container(
                margin: EdgeInsets.only(),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('Already have an account ?',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: skyblure),),
                    ),

SizedBox(width: 10,),
InkWell(
onTap: (){},
child:     Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('Login',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: skyblure),),
                    ),
)
                  ],
                )
                 
              )
              
            ],
          )
          
        ],
      ),
    );
  }


}
