import 'package:flutter/material.dart';

void main(){
  runApp(recipe_manager());
}
class recipe_manager extends StatelessWidget {
  const recipe_manager ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(
          child:  Text("TESTING"),
        ),
      )
    );
  }
}