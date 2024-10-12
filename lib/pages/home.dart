import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recipe App",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(238, 8, 32, 187),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/undraw_Welcoming_re_x0qo.png",
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/ViewRecipes");
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),
                child: Text("Your Recipes",style: TextStyle(color:Colors.white)),
              ),
               SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                Navigator.pushNamed(context,"/AIPage");
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 58, 33, 243)),
              child:Text("Ask AI",style: TextStyle(color:Colors.white)),
              ),
              
            ],
          ),
        ),
      ),
      drawer: Drawer(),
      backgroundColor: Colors.white,
    );
  }
}
