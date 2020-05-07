import 'package:casestudy/constantcolor.dart';
import 'package:casestudy/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: 
      Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
           height: MediaQuery.of(context).size.height/2.7,
            width: MediaQuery.of(context).size.width,
          child: top(),
            //color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.only(top: 9),
            child: centerpart(),
          ),
          Container(
            height: 150,
            child: bottompart(),
          )
        ],
      )
       ) ),
    );
  }

  Widget centerpart() {
    
    return Container(
      margin: EdgeInsets.only(top: 10),
      height:260,
      width: MediaQuery.of(context).size.width/1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 15,),
          Text('Login',
           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: skyblure),),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 30),
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
                       hintStyle: TextStyle(color:textfeildcolor),
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
                      hintText: 'Enter Password',
                    
                       hintStyle: TextStyle(color:textfeildcolor),
                      prefixIcon: IconButton(onPressed: (){},
                      icon: Image.asset('images/padlock.png')
                    
                      ),
                     contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                
                ),
         SizedBox(height: 15,),
         InkWell(onTap: (){},
         child: Text('Forgot Password?',
          style: TextStyle(fontSize: 14,color: textfeildcolor),),),
        Container(
          margin: EdgeInsets.only(top:20),
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
    },
child: Text('Login',
style: TextStyle(fontSize: 18,color:Colors.white),
),

  )],
         )
 
        )
        ])) ;
  }

  Widget top() {
    return Container(
    
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/top.png',  

        ),
        fit: BoxFit.cover        )
      ),
  
    );
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
                margin: EdgeInsets.only(),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('Dont have an account ?',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: skyblure),),
                    ),

SizedBox(width: 10,),
InkWell(
onTap: (){},
child:     Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('Sign up',
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
