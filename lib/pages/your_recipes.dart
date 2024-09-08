import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My Recipes",style: TextStyle(fontSize: 25,color:Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(238, 8, 32, 187),
      ),
      body:Container(
        child:Text("Your Recipes Displayed here",style: TextStyle(fontSize: 20),textAlign:TextAlign.center),
      ),
    );
  }
}
