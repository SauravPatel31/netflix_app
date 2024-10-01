import 'package:flutter/material.dart';
import 'package:netflix_ui/ui_page/theme_provider.dart';
import 'package:netflix_ui/utils/appconst_data_page.dart';
import 'package:netflix_ui/utils/custom_widget_page.dart';
import 'package:netflix_ui/utils/ui_helper.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isDark=false;
  @override
  Widget build(BuildContext context) {
    bool isValue = context.watch<ThemeProvider>().getThemeValue();
    isDark=Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
       // backgroundColor: backgroundcolor(),
      appBar: AppBar(
        //backgroundColor: Color(0xff444645),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset("assets/icons/nlogo.png",fit: BoxFit.cover,),
        ),
        actions: [

          IconButton(onPressed: ()async{

            context.read<ThemeProvider>().changeThemeValue(isValue=!isValue);
            setState(() {

            });

          }, icon: Icon(isValue? Icons.light_mode:Icons.dark_mode)),
          IconButton(onPressed: (){}, icon:Icon(Icons.save_alt_rounded,)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
        ],
      ),
      body: Center(
        child: Container(
          /*decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff444645),
              Color(0xff000000)
            ],
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),*/
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///TV Shows Movies Button..
                  Container(
                    margin: EdgeInsets.only(top:10),
                    //color: Colors.red,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          OutlinedButton(onPressed: (){}, child: Text("TV Shows",style: mytextstyle16(myfontweight: FontWeight.w400),)),
                          SizedBox(width: 15,),
                          OutlinedButton(onPressed: (){}, child: Text("Movies",style: mytextstyle16(myfontweight: FontWeight.w400),)),
                          SizedBox(width: 15,),
                          OutlinedButton(onPressed: (){}, child: Row(
                            children: [
                              Text("Category",style: mytextstyle16(myfontweight: FontWeight.w400),),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ///Movie Poster..
                  Center(
                    child: SizedBox(
                      width: 380,
                      height: 550,
                      child: Stack(
                        children: [
                          ///Images..
                          Card(
                            elevation: 115,
                            child: Container(
                              width: 380,
                              height: 550,
                              decoration: BoxDecoration(
                                //color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.white
                                ),
                                image: DecorationImage(image: AssetImage("assets/images/onlynetflix/thanksg.jpeg"),fit: BoxFit.cover),

                              ),
                            ),

                          ),
                          ///Play and My List Button...
                          Positioned(
                            bottom: 15,
                            child: SizedBox(
                              width: 380,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 170,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.play_arrow,size:30,color: Colors.black,),
                                        Text("Play",style: mytextstyle18(mycolor: Colors.black),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 170,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add,size:30,color: Colors.white,),
                                        Text("My List",style: mytextstyle18(mycolor: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Movie Category Name..
                  Text("Today's Top Picks for You",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  ///Category Movies List..
                  SizedBox(
                    height: 230,
                    child: ListView.builder(itemBuilder: (context,index){
                      return MovieCard(imgurl: AppconstData.mixmovie[index]["img"],);
                    },
                      itemCount: AppconstData.mixmovie.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Continue Watch Movie Category Name..
                  Text("Continue Watching for Saurav",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  ///Continue Watch MoviesList..
                  SizedBox(
                    height: 230,
                    child: ListView.builder(itemBuilder: (context,index){
                      return ContinueWatchMovieCard(imgurl: AppconstData.hindimovie[index]['img']);
                    },
                      itemCount: AppconstData.hindimovie.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Downloads For You Movie Category Name..
                  Text("Downloads For You",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  ///Downloads For You Movie Category List..
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 215,
                          width: 250,
                          child: Stack(
                            children: [
                              Container(
                                height: 215,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/hindi_movie/rrr.jpg"),fit: BoxFit.cover)
                                ),
                              ),
                              Positioned(
                                  top: 5,
                                  right: 0,
                                  child: Icon(Icons.arrow_forward,color: Colors.white,size: 45,)),
                              Center(child: Text("Watch on the go",style: TextStyle(fontSize: 25,color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w700),)),

                            ],
                          ),
                        ),
                        Row(
                          children: [
                            MovieCard(imgurl: AppconstData.mixmovie[0]["img"],isRecentadd: true,isNetflixlogo: true,),
                            MovieCard(imgurl: AppconstData.mixmovie[1]["img"],isRecentadd: true),
                            MovieCard(imgurl: AppconstData.mixmovie[2]["img"],isNetflixlogo: true,),
                            MovieCard(imgurl: AppconstData.mixmovie[3]["img"],isRecentadd: true,isNetflixlogo: true,),
                            MovieCard(imgurl: AppconstData.mixmovie[4]["img"],isRecentadd: true,),
                            MovieCard(imgurl: AppconstData.mixmovie[5]["img"]),
                            MovieCard(imgurl: AppconstData.mixmovie[6]["img"],isNetflixlogo: true,),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Top 10 Movies India Today Name..
                  Text("Top 10 Movies India Today",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  ///Top 10 Movies India Today Category..
                  SizedBox(
                    height: 230,
                    child: ListView.builder(itemBuilder: (context,index){
                      return TopHindiMovies(imgurl: AppconstData.hindimovie[index]["img"], no: AppconstData.hindimovie[index]["no"]);

                    },
                      itemCount: AppconstData.hindimovie.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Only on Netflix",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 330,
                    child: ListView.builder(itemBuilder: (_,index){
                      return  Container(
                        margin: EdgeInsets.all(10),
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage(AppconstData.mixmovie[index]["img"]),fit: BoxFit.cover)
                        ),
                      );
                    },
                      itemCount: AppconstData.mixmovie.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Us Tv Shows..
                  Text("US TV Shows",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(itemBuilder: (_,index){
                      return MovieCard(imgurl: AppconstData.onlynetflix[index]["img"],isNetflixlogo: true,);
                    },
                      itemCount: AppconstData.onlynetflix.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Hindi Movies Recent Add and only in Netflix
                  Text("Hindi Movies Recent Add",style: mytextstyle18(),),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(itemBuilder: (_,index){
                      return MovieCard(imgurl: AppconstData.hindimovie[index]["img"],isNetflixlogo: true,isRecentadd: true,);
                    },
                      itemCount: AppconstData.hindimovie.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),


                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}


