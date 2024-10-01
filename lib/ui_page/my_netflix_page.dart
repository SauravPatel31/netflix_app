import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/appconst_data_page.dart';
import 'package:netflix_ui/utils/custom_widget_page.dart';

import '../utils/ui_helper.dart';

class MyNetflixPage extends StatelessWidget {
  const MyNetflixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back),),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.save_alt_sharp,size: 25,),
              SizedBox(width: 20,),
              Icon(Icons.search,size: 25,)
            ],),
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Movie Poster..
            Stack(
              children: [
                Image.asset("assets/images/hindi_movie/salar.jpg",width: double.infinity,height: 200,fit: BoxFit.cover,),
                Positioned(
                    bottom: 10,
                    right: 10,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.volume_off,size: 25,)))
              ],
            ),
            Container(
               margin: EdgeInsets.only(left: 160),
                child: Text(". . . . .",style: mytextstyle28(myfontweight: FontWeight.w900),)),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Movie Name...
                  Text("Srikhant",style: mytextstyle28(),),
                  ///year movie time..
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2024",),
                        ///U A 7+
                        Container(
                          width: 58,
                          color: Colors.black54,
                          child: Center(child: Text("U/A 7+",style: TextStyle(color: Colors.white),)),
                        ),
                        ///time..
                        Text("2h 10m",style: TextStyle(color: Colors.white),),
                        ///HD..
                        Container(
                          width: 35,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 3)
                          ),
                          child: Center(child: Text("HD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ///Top 10 Movies..
                  Container(
                    width: 190,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("assets/icons/to10.png",width: 30,)),
                        Text("#3 in Movies Today",style: mytextstyle16(myfontweight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ///Play Button...
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ) ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow,size: 30,),
                          Text("Play",style: mytextstyle18(myfontweight: FontWeight.bold,mycolor: Colors.black),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ///Download Button...
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration:BoxDecoration(
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.circular(5)
                      ) ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.save_alt,size: 23,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Download",style: mytextstyle18(myfontweight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Lorem Ipsum is simply dummy text of the printing and"
                      " typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",style: mytextstyle18(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  ///add,rate,share Icons Button..
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///My List Button..
                        Column(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 35,color: Colors.white,)),
                            Text("My List",style: mytextstyle16(myfontweight: FontWeight.normal),)
                          ],
                        ),
                        ///Rate Button..
                        Column(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined,size: 35,color: Colors.white,)),
                            Text("Rate",style: mytextstyle16(myfontweight: FontWeight.normal),)
                          ],
                        ),
                        ///Share Button..
                        Column(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 35,color: Colors.white,)),
                            Text("Share",style: mytextstyle16(myfontweight: FontWeight.normal),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ///More Like This Text..
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 4,color: Colors.red,)
                      ),
                    ),
                    child: Text("More Like This",style: mytextstyle18(),),
                  ),
                  SizedBox(height: 10,),
                  ///Movie Card GridView..
                  SizedBox(
                    height: 500,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 4/6,mainAxisSpacing: 5,crossAxisSpacing: 5),
                        itemBuilder:(_,index){
                      return MovieCard(imgurl: AppconstData.mixmovie[index]["img"],isRecentadd: true,);


                        },
                    itemCount: AppconstData.mixmovie.length,
                    ),
                  )




                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
