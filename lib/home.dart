import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe App"),
      ),
      body: Center(
        child: Container(
          child:  Text("days of TESTING"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}