import 'package:flutter/material.dart';

class APK extends StatefulWidget {
  const APK({Key? key}) : super(key: key);

  @override
  State<APK> createState() => _APKState();
}

class _APKState extends State<APK> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text(
            "Home page",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Naufal'),
                accountEmail: Text('naufalzein99@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & Feedback'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
