import 'package:educourse/screens/courses_screen.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  
  List cataNames=[
    "Category",
    "Classes",
    "Freee Courses",
    "BookStore",
    "Live Course",
    "LeaderBoard"
  ];
  List<Color>catColor=[
Colors.yellow,
 Colors.lightGreen,
 Colors.blueAccent,
 Colors.purple,
 Colors.cyanAccent,
 Colors.indigo,
  ];
  List<Icon> catIcon=[
    Icon(Icons.category,color:Colors.white,size: 30,),
    Icon(Icons.video_library,color:Colors.white,size: 30,),
    Icon(Icons.assignment,color:Colors.white,size: 30,),
    Icon(Icons.store,color:Colors.white,size: 30,),
    Icon(Icons.play_circle_fill,color:Colors.white,size: 30,),
    Icon(Icons.emoji_events,color:Colors.white,size: 30,),

  ];
  List imglist =[
    'Flutter',
    'C#',
    'books',
    'Python',
    'React Native',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            padding:EdgeInsets.only(top: 15,left: 15,right: 15,
            bottom: 10),
            decoration:BoxDecoration(
              color:Colors.blueGrey,
              borderRadius:BorderRadius.only(
                bottomLeft:Radius.circular(20),
                bottomRight:Radius.circular(20),


              ),

            ),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Icon(

                   Icons.dashboard,
                       size: 30,
                       color:Colors.white,
                     ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color:Colors.white,

                    ),
                  ],

                ),
              SizedBox(height:15,),
                Padding(padding:EdgeInsets.only(left: 3,bottom: 10),
                child:Text(
                  "Hey,Programme Lover",
                  style:TextStyle(
                    fontSize:22,
                    fontWeight:FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color:Colors.white,
                  ),
                ),

                ),
                Container(
                  margin:EdgeInsets.only(top: 20,bottom: 20),
                  width:MediaQuery.of(context).size.width,
                  height: 55,
                  alignment:Alignment.center,
                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:TextFormField(
                    decoration:InputDecoration(
                      border:InputBorder.none,
                      hintText:'Search Here....',
                      hintStyle:TextStyle(
                        color:Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon:Icon(
                        Icons.search,
                        size: 25,
                      )

                    ),

                  ),
                )
              ],
            ),


          ),
          Padding(
              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
            child:Column(children: [
              GridView.builder(
                itemCount: cataNames.length,
                shrinkWrap: true,
                  physics:NeverScrollableScrollPhysics(),
                 gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1.1),



                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration:BoxDecoration(
                          color:catColor[index],
                          shape:BoxShape.circle,
                        ),
                        child:Center(child:catIcon[index],),
                      ),
                      SizedBox(height: 10),
                      Text(cataNames[index],
                        style:TextStyle(
                          fontSize: 15,
                          fontWeight:FontWeight.w500,
                          color:Colors.black.withOpacity(0.6),
                        ),

                      ),
                    ],
                  );
                },
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text("Courses",style:TextStyle(
                    color:Colors.black,
                    fontSize:23,
                    fontWeight:FontWeight.w500,
                  ),),
                  Text("See All",style:TextStyle(
                    color:Colors.black,
                    fontSize: 23,
                    fontWeight:FontWeight.w500,
                  ),)
                ],

              ),
              SizedBox(height: 10),
              GridView.builder(
                  itemCount: imglist.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics()
                  ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing:10,crossAxisSpacing: 10,childAspectRatio: 0.8),





                  itemBuilder:(context,index){
                    return InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>CoursesScreen(imglist[index])));
                      },
                      child:Container(
                        padding:
                        const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:Colors.blueGrey,

                        ),
                        child:Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                            child: Image.asset(
                            "images/${imglist[index]}.png",
                              width: 100,
                              height: 100,

                            ),),
                            SizedBox(height: 10,),
                            Text(
                              imglist[index],
                              style:TextStyle(
                                fontSize: 22,
                                fontWeight:FontWeight.w500,
                                color:Colors.black.withOpacity(0.5),
                                
                              ),
                            )
                          ],
                        ),
                      ),

                    );

                  },),
            ],),

          ),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        showUnselectedLabels: true,
          iconSize: 32,
          selectedItemColor:Colors.deepPurpleAccent,
          selectedFontSize: 16,
           unselectedItemColor:Colors.grey,



          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'courses'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),


          ]),
    );
  }
}
