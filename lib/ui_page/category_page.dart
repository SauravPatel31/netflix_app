import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/ui_helper.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff2B2B2B),
              borderRadius: BorderRadius.circular(15)
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Text("Srikanth",style: mytextstyle18(),),
                  SizedBox(height: 25,),
                  ///Cast
                  Text("Cast",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  Text("Rajkumar Rao",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Jyothika",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Alaya F",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Sharad Kelkar",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Arnav Abdagiri",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Srinivas Beesetty",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Anusha Nuthula",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Text("Sridhar Marthy",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 25,),
                  ///Director..
                  Text("Director",style: mytextstyle18(),),
                  SizedBox(height: 15,),
                  Text("Tushar Hiranadani",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 15,),
                  ///Writers..
                  SizedBox(height: 25,),
                  Text("Writers",style: mytextstyle18(),),
                  SizedBox(height: 15,),
                  Text("Jagdeep Sidhu",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  SizedBox(height: 15,),
                  Text("Sumit Purohit",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  ///Maturity Rating..
                  SizedBox(height: 25,),
                  Text("Maturity Rating",style: mytextstyle18(),),
                  SizedBox(height: 10,),
                  Container(
                    width: 70,
                    color: Color(0xff4D4D4D),
                    child: Center(child: Text("U/A 7+",style: mytextstyle16(myfontweight: FontWeight.normal),)),
                  ),
                  SizedBox(height: 10,),
                  Text("language, mild themes",style: mytextstyle16(myfontweight: FontWeight.normal),),
                  ///Genres..
                  SizedBox(height: 25,),
                  Text("Genres",style: mytextstyle18(),),
                  SizedBox(height: 15,),
                  Text("Hindi",style: mytextstyle16(myfontweight: FontWeight.normal),)
                  
                  
                  
              
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
              right: 10,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:Icon(Icons.cancel_outlined,size: 30,color: Colors.white,)))
        ],
      ),
    );
  }
}
