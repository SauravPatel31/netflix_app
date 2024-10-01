
import 'package:flutter/material.dart';

import '../utils/ui_helper.dart';

class NewHotePage extends StatelessWidget {
  const NewHotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("New & Hote",style: mytextstyle18(),),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Icon(Icons.save_alt_sharp,size: 25,),
                 SizedBox(width: 20,),
                 Icon(Icons.search,size: 25)
               ],
             ),
           )
          ],),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ///Outline Button..
              Container(
                // height: 25,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      OutlinedButton(onPressed: (){}, child: Row(
                        children: [
                          Text("🍿",style: mytextstyle16(myfontweight: FontWeight.w700),),
                          Text("Coming Soon",style: mytextstyle16(myfontweight: FontWeight.w700),),

                        ],
                      )),

                      SizedBox(width: 15,),
                      OutlinedButton(onPressed: (){}, child: Row(
                        children: [
                          Text("🔥",style: mytextstyle16(myfontweight: FontWeight.w700),),
                          Text("Everyone's Watching",style: mytextstyle16(myfontweight: FontWeight.w700),),
                        ],
                      )),
                      SizedBox(width: 15,),
                      OutlinedButton(onPressed: (){}, child: Row(
                        children: [
                          Text("🎮",style: mytextstyle16(myfontweight: FontWeight.w700),),
                          Text("Category",style: mytextstyle16(myfontweight: FontWeight.w400),),

                        ],
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ///Movie Poster..
              Container(
                height: 225,
                child: Row(
                  children: [
                    ///Coming soon Date..
                    Container(
                      width: 70,
                      height: 225,

                      child: Column(
                        children: [
                          Text("AUG",style: mytextstyle16(myfontweight: FontWeight.w400),),
                          Text("09",style: mytextstyle28(myfontweight: FontWeight.w900),),
                        ],
                      ),
                    ),
                    ///Coming soon Movie Poster..
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            height: 225,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              image: DecorationImage(image: AssetImage("assets/images/hindi_movie/kill.jpg"),fit: BoxFit.fill)
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 5,
                            child: Container(
                              width: 90,
                              decoration: BoxDecoration(
                                //color: Colors.black87,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(child: Text("U/A 16+",style: mytextstyle16(),)),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child: Icon(Icons.volume_off,size: 20,))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ///notification and Info icons
              Container(
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/icons/ab.png"),
                    Row(

                      children: [
                        Icon(Icons.notifications_none,size: 35),
                        SizedBox(width: 20,),
                        Icon(Icons.info_outline,size: 35),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              ///Movie Description...
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Coming on 9 August",style: mytextstyle18(myfontweight: FontWeight.bold),),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",textAlign: TextAlign.justify,style: mytextstyle16(myfontweight: FontWeight.w100),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 225,
                child: Row(
                  children: [
                    ///Coming soon Date..
                    Container(
                      width: 70,
                      height: 225,
                      child: Column(
                        children: [
                          Text("JUL",style: mytextstyle16(myfontweight: FontWeight.w400),),
                          Text("19",style: mytextstyle28(myfontweight: FontWeight.w900),),
                        ],
                      ),
                    ),
                    ///Coming soon Movie Poster..
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            height: 225,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/onlynetflix/download (2).jpeg"),fit: BoxFit.fill)
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 5,
                            child: Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  //color: Colors.black87,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(child: Text("U/A 13+",style: mytextstyle16(),)),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child: Icon(Icons.volume_off,size: 20,)),
                          Center(child: Icon(Icons.play_circle_outline_sharp,size: 70))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ///notification and Info icons
              Container(
                height: 65,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/icons/ab2.png"),
                    Row(
                      children: [
                        Icon(Icons.notifications_none,size: 35),
                        SizedBox(width: 20,),
                        Icon(Icons.info_outline,size: 35),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ///Movie Description...
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Coming on 19 July",style: mytextstyle18(myfontweight: FontWeight.bold),),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                        " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",textAlign: TextAlign.justify,style: mytextstyle16(myfontweight: FontWeight.w100),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
