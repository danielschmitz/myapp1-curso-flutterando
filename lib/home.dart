import 'package:flutter/material.dart';

import 'package:myapp/shared/switch_theme.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Daniel Schmitz"),
                  currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "https://avatars.githubusercontent.com/u/1509692?v=4")),
                  accountEmail: Text("danieljfa@gmail.com")),
              ListTile(
                title: Text("Início"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                title: Text("Página dois"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('home');
                },
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Logout"),
                onTap: () {
                  print('home');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Home : App Bar Title"),
          actions: [SwitchMyTheme()],
        ),
        body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Text("Col"),
              Container(
                width: 50,
                height: 50,
                color: Colors.blueAccent,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Row"),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.lightGreen,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
