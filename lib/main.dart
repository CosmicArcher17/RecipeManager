import 'package:flutter/material.dart';
import 'package:recipe_manager/home.dart';

void main(){
  runApp(RecipeManager());
}

class RecipeManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}