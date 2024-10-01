import 'dart:ui';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget{
  String imgurl;
  bool isNetflixlogo;
  bool isRecentadd;
  MovieCard({required this.imgurl,this.isNetflixlogo=false,this.isRecentadd=false});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: SizedBox(
        width: 150,
        height: 220,
        child: Stack(
          children: [
            Container(
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(imgurl),fit: BoxFit.cover),
              ),
            ),
            ///Netflix Logo..
            isNetflixlogo?Positioned(
                top: 4,
                left: 3,
                child: Image.asset("assets/icons/nlogo.png",width: 32,height: 32,fit: BoxFit.cover,)):Container(),
            ///Recent add Movie benar..
            isRecentadd?Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                    color: Color(0xffE40912)
                ),
                child: Center(child: Text("Recently added",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            ):Container()
          ],
        ),
      ),
    );
  }

}

class ContinueWatchMovieCard extends StatelessWidget{
  String imgurl;
  bool isNetflixlogo;
  bool isRecentadd;
  ContinueWatchMovieCard({required this.imgurl,this.isNetflixlogo=false,this.isRecentadd=true});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: SizedBox(
        width: 150,
        height: 220,
        child: Stack(
          children: [
            Container(
              width: 180,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ///Movie Image..
            Container(
              height: 180,
              width: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imgurl,fit: BoxFit.cover,)),
            ),
            ///Info and Settings Icons..
            Positioned(
              bottom: 5,
              child: SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.info_outline,size: 25,color: Colors.white,),
                    Icon(Icons.settings,size: 25,color: Colors.white,)
                  ],
                ),
              ),
            ),
            ///Play Button..
            Align(
                alignment: Alignment.center,
                child: Icon(Icons.play_circle_outline_sharp,color: Colors.white.withOpacity(0.8),size: 60,)),
            ///Netflix Logo..
            isNetflixlogo?Positioned(
                top: 4,
                left: 3,
                child: Image.asset("assets/icons/nlogo.png",width: 32,height: 32,fit: BoxFit.cover,)):Container(),
            ///Recent add Movie benar..
            isRecentadd?Positioned(
              bottom: 40,
              left: 28,
              child: Container(
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                    color: Color(0xffE40912)
                ),
                child: Center(child: Text("Recently added",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            ):Container()
          ],
        ),
      ),
    );
  }

}

class TopHindiMovies extends StatelessWidget{
  String imgurl;
  String no;
  bool isNetflixlogo;
  bool isRecentadd;
  TopHindiMovies({required this.imgurl,required this.no,this.isNetflixlogo=false,this.isRecentadd=true});

  @override
  Widget build(BuildContext context) {
   return Card(
     elevation: 5,
     child: SizedBox(
       width: 200,
       height: 220,
       child: Stack(
         children: [
           ///Card Design...
           Container(
             width: 200,
             height: 220,
             decoration: BoxDecoration(
                 color: Colors.black,
               borderRadius: BorderRadius.circular(10)
             ),
             child: Stack(
               children: [
                 Text("$no",style: TextStyle(color: Colors.white,fontSize: 165,fontWeight: FontWeight.w900),),
                 Positioned(
                     right: 0,
                     child: Image.asset(imgurl,width: 150,height: 220,fit: BoxFit.fitHeight,)),
               ],
             ),
           ),
           ///Netflix Logo..
           isNetflixlogo?Positioned(
               top: 4,
               left: 3,
               child: Image.asset("assets/icons/nlogo.png",width: 32,height: 32,fit: BoxFit.cover,)):Container(),
           ///Movie benar..
           isRecentadd?Positioned(
             bottom: 0,
             right: 27,
             child: Container(
               width: 100,
               height: 20,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                   color: Color(0xffE40912)
               ),
               child: Center(child: Text("Recently added",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),)),
             ),
           ):Container()
         ],
       ),
     ),
   );
  }

}




