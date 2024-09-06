import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int val=30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe App"),
      ),
      body: Center(
        child: Container(
          child:  Text("$val days of TESTING"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}