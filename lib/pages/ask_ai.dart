import 'package:flutter/material.dart';

class AIPage extends StatelessWidget {
  const AIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Ask AI",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle:true
        ),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,"/home");
          }, 
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),
          child:Text("Home Page",style: TextStyle(color:Colors.white))
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,"/ViewRecipes");
          }, 
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),
          child:Text("Your Recipes",style: TextStyle(color:Colors.white))
          ),
        ],
      )
      ),
    );
  }
}