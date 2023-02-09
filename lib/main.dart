import 'package:flutter/material.dart';
 
 void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          title: Text("This is my app rock"),
          backgroundColor: Colors.amber,
        ),

        drawer: Drawer(
          backgroundColor: Color.fromARGB(209, 98, 60, 202),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                ),
                child: Column(
                  children: [
                    ClipRect(child: Image.network("https://cdn.pixabay.com/photo/2022/08/23/17/06/background-7406102_960_720.jpg",height: 100,width: 100,),
                    )
                    
                  ],
                ),
              )
            ],
          ),
        ),
         ),
    );
  }
}