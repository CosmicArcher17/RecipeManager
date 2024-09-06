import 'package:flutter/material.dart';
import 'package:recipe_manager/pages/home.dart';

void main() {
  runApp(RecipeManager());
}

class RecipeManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
