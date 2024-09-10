import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My Recipes",style: TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(238, 8, 32, 187),
      ),
      body:Center(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,"/home");
          }, 
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),
          child:Text("Home Page",style: TextStyle(color:Colors.white)),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
              Navigator.pushNamed(context,"/AIPage");
            },
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),
            child:Text("Ask AI",style: TextStyle(color:Colors.white)),
            ),
        ],
       )
      ),
      backgroundColor: Colors.white,
    );
  }
}
