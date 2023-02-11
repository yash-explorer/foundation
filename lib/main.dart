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
          backgroundColor: Color.fromARGB(209, 159, 153, 173),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Gojo Sataru"),
                accountEmail: Text("gojosataru96@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      "https://picsum.photos/250?image=9",
                      scale: .9,
                      width: 170,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1514810771018-276192729582?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  fit: BoxFit.cover,
                )),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
                onTap: () => print("you just pressed Favourite button"),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                onTap: () => print("you just pressed Share button"),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Friends"),
                onTap: () => print("you just pressed Friends button"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                onTap: () => print("you just pressed Notification button"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () => print("you just pressed Settings button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
