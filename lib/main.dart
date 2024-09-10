import 'package:flutter/material.dart';
import 'package:recipe_manager/pages/ask_ai.dart';
import 'package:recipe_manager/pages/home.dart';
import 'package:recipe_manager/pages/your_recipes.dart';

void main() {
  runApp(RecipeManager());
}

class RecipeManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute:"/home",
      routes:{
        "/home": (context)=>HomePage(),
        "/ViewRecipes":(context)=>RecipeView(),
        "/AIPage":(context)=>AIPage(),
      },
      
    );
  }
}
