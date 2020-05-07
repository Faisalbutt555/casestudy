import 'package:flutter/material.dart';

import 'constantcolor.dart';
class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
   return Card(
   elevation: 5,
    child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color:  Colors.grey)
                    ),
                    child: 
                    TextField(
                    textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(
                         borderSide: BorderSide.none
                           ),
                        hintText: 'Search course',  
                         hintStyle: TextStyle(color: skyblure,fontWeight: FontWeight.bold,fontSize: 13),
                        prefixIcon: IconButton(onPressed: (){},
                        padding: EdgeInsets.only(left: 10),
                        icon:
                         Icon(Icons.search,
                      
                        color: skyblure,),
                      
                        ),
                       contentPadding: EdgeInsets.only(left: 30),
                      ),
                    ),
                  ),
 ); 
  }
}