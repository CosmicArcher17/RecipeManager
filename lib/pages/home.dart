import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Color.fromARGB(238, 8, 32, 187),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child:  Text("Welcome to the App",style: TextStyle(fontSize: 20),),
        ),
      ),
      drawer: Drawer(),
    );
  }
}