import 'package:flutter/material.dart';

import '../widgets/descriptionvideo.dart';
import '../widgets/videosection.dart';

class CoursesScreen extends StatefulWidget {
  String img;
  CoursesScreen(this.img);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  bool isVideo =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        foregroundColor:Colors.black,
        backgroundColor:Colors.white,
        elevation: 0,
        centerTitle: true,
        title:Text(widget.img,
        style:TextStyle(
           fontWeight:FontWeight.bold,
          letterSpacing: 1,
        ),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10),
           child:Icon(Icons.notifications,size: 28,color:Colors.pinkAccent),

          ),
        ],

      ),
      body:Padding(padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
      child:ListView(
        children: [
          Container(
            padding:EdgeInsets.all(5),
            width:MediaQuery.of(context).size.width,
            height: 200,
            decoration:BoxDecoration(
              color:Colors.white,
                image:DecorationImage(image:AssetImage("images/${widget.img}.png"),),
            ),
            child:Center(
              child:Container(
                padding:EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color:Colors.white,

                  shape:BoxShape.circle,
                ),
                child:Icon(Icons.play_arrow_rounded,color:Colors.deepPurpleAccent,size: 50,),
              ),
            ),
          ),
          SizedBox(height: 15),
         Text(
           "${widget.img}Complete Course",
           style:TextStyle(
             fontSize: 22,
             fontWeight:FontWeight.w500,
           ),
         ) ,
          SizedBox(height: 5,),
          Text("Created BY Authority",style:TextStyle(
            fontSize:16,
            fontWeight:FontWeight.w500,
            color:Colors.black.withOpacity(0.7),
          ),),
          SizedBox(height: 5),
          Text("50 Videos",style:TextStyle(
            fontSize:16,
            fontWeight:FontWeight.w500,
            color:Colors.black.withOpacity(0.7),
          ),),
          SizedBox(height: 20),
          Container(
            padding:EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            decoration:BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(10),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Material(
                  color:isVideo?Colors.blue:Colors.lightBlueAccent.withOpacity(0.6),
                  borderRadius:BorderRadius.circular(10),
                  child:InkWell(
                    onTap:(){
                     setState(() {
                       isVideo=true;
                     });
                    },
                    child:Container(
                      padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      child: Text("Videos Here",style:TextStyle(
                        color:Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),

                    ),
                  ),
                ),
                SizedBox(width: 12,),
                Material(
                  color:isVideo?Colors.lightBlueAccent.withOpacity(0.6):Colors.blue,
                  borderRadius:BorderRadius.circular(10),
                  child:InkWell(
                    onTap:(){
                      setState(() {
                        isVideo=false;
                      });
                    },
                    child:Container(
                      padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      child: Text("Description",style:TextStyle(
                        color:Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),

                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 5),
          isVideo?Videosection():Descriptionvideo(),

        ],
      ),

      ),



      );

  }
}

