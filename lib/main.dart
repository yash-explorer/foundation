import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is my app rock"),
          backgroundColor: Colors.amber,
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(209, 98, 60, 202),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Gojo Sataru"),
                  accountEmail: Text("gojosataru96@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.network("https://picsum.photos/250?image=9",scale: .9, width: 170,height: 180,),
                    ),
                  ),),
                  
            ],
          ),
        ),
      ),
    );
  }
}
