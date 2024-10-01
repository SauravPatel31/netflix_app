import 'package:flutter/material.dart';
import 'package:netflix_ui/ui_page/category_page.dart';
import 'package:netflix_ui/utils/custom_widget_page.dart';

import '../utils/ui_helper.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
///format_list_bulleted_rounded
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Netflix"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          Builder(
            builder: (context) {
              return DrawerButton(onPressed: (){
                Scaffold.of(context).openEndDrawer();
              },);
            }
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/icons/s.png",width: 50,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Saurav",style: mytextstyle18(),),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )

                ],
              ),
              SizedBox(height: 50,),
              ///Notification..
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(onPressed: (){},icon: Icon(Icons.notifications),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Text("Notification",style: mytextstyle18(),)),
                  Icon(Icons.arrow_forward_ios,)
                ],
              ),
              SizedBox(height: 20,),
              ///Movie Card in Stack..
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(".",style: mytextstyle28(mycolor: Colors.red,myfontweight: FontWeight.w900),),
                    SizedBox(width: 5,),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            width: 160,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff414141),
                              borderRadius: BorderRadius.circular(5)
                            ),

                          ),
                          Container(
                            width: 150,
                            height: 92,
                            decoration: BoxDecoration(
                              color: Color(0xff808080),
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 82,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/images/hindi_movie/jawan.jpg"),fit: BoxFit.fill)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Suggestion for Tonight",style: mytextstyle18(),),
                        SizedBox(height: 8,),
                        Text("Explore personalised picks.",style: mytextstyle16(myfontweight: FontWeight.normal),),
                        SizedBox(height: 8,),
                        Text("13 Jul",style: mytextstyle16(myfontweight: FontWeight.normal),)

                      ],
                    )


                  ],
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(".",style: mytextstyle28(mycolor: Colors.red,myfontweight: FontWeight.w900),),
                    SizedBox(width: 5,),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            width: 160,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff414141),
                              borderRadius: BorderRadius.circular(5)
                            ),

                          ),
                          Container(
                            width: 150,
                            height: 92,
                            decoration: BoxDecoration(
                              color: Color(0xff808080),
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 82,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/images/onlynetflix/download (1).jpeg"),fit: BoxFit.fill)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your latest top picks",style: mytextstyle18(),),
                        SizedBox(height: 8,),
                        Text("Find a new favourite.",style: mytextstyle16(myfontweight: FontWeight.normal),),
                        SizedBox(height: 8,),
                        Text("10 Jul",style: mytextstyle16(myfontweight: FontWeight.normal),)

                      ],
                    )


                  ],
                ),
              ),
              SizedBox(height: 20,),
              ///Downloads..
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff6178E8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(onPressed: (){},icon: Icon(Icons.download_rounded,),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Text("Downloads",style: mytextstyle18(),)),
                  Icon(Icons.arrow_forward_ios,)
                ],
              ),
              SizedBox(height: 20,),
              ///Text..
              Text("TV Shows & Movies You have Liked",style: mytextstyle18(),),
              SizedBox(height: 15,),
              Stack(
                children: [
                  Container(
                    width: 150,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff161616),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  SizedBox(
                      height: 205,
                      child: MovieCard(imgurl: "assets/images/hindi_movie/animaljpg.jpg")),
                  Positioned(
                    bottom: 10,
                    left: 40,
                    child: Row(
                      children: [
                        Icon(Icons.share,size: 30,),
                        Text("Share",style: mytextstyle16(),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      ///Drawer..
      endDrawer: Drawer(
        backgroundColor: Colors.green,
        child: CategoryPage(),
      ),
    );
  }
}
