import 'package:flutter/material.dart';
class Videosection extends StatelessWidget {

List videoList = [
  "Introduction on FLutter",
  "Setup Android Studio",
  "Dart Language",
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videoList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,

        itemBuilder:(context,index){
          return ListTile(
            leading:Container(
              padding:EdgeInsets.all(5),
              decoration:BoxDecoration(
                color:index==0?Colors.deepPurpleAccent:Colors.lightBlueAccent.withOpacity(0.6),
                shape:BoxShape.circle,
              ),
              child:Icon(Icons.play_arrow_rounded,color:Colors.white,size: 30,),

            ),
            title:Text(videoList[index]),
            subtitle:Text("5min"),
          );
        }


    );
  }
}
