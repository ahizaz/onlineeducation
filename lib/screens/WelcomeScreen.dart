import 'package:flutter/material.dart';

import 'home_screen.dart';
class WelcomeScreen extends StatelessWidget {
const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child:Stack(
          children: [
            Stack(
              children: [
                Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.6,
                  decoration:BoxDecoration(
                    color:Colors.white,
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.6,
                  decoration:BoxDecoration(
                    color:Colors.pinkAccent,
                    borderRadius:BorderRadius.only(bottomRight:Radius.circular(20)),
                    
                  ),
                  child:Center(child:Image.asset('images/books.png',scale:0.8,),),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height/2.666,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.only(topLeft:Radius.circular(70)),

                ),
                child:Column(
                  children: [
                    Text(
                      "Explore It Sector",
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight:FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),

                    ),
                    SizedBox(height: 15,),
                    Padding(padding:EdgeInsets.symmetric(horizontal:40 ),
                      child:Text(
                        "A Release is like a boat. 80% of the holes plugged is not good enough.",
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          fontSize:17,
                          color:Colors.black12.withOpacity(0.6),
                        ),

                      ),


                    ),
                    SizedBox(height: 23),
                    Material(
                      color:Colors.blue,
                      borderRadius:BorderRadius.circular(10),
                      child:InkWell(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
                        },
                        child:Container(
                          padding:EdgeInsets.symmetric(
                            vertical:13,horizontal: 70,

                          ),
                          child:Text("Let's Start",style:TextStyle(
                            color:Colors.white,
                            fontSize: 22,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 1,
                          ),),
                        ),
                      ),

                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
