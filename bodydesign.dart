import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bodydesign(),
    );
  }
}

// ignore: camel_case_types
class bodydesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        endDrawer: Drawer(
          elevation: 50.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(child: Text("",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold)),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrange,Colors.orange]
                    )
                ),
              ),
              ListTile(
                  title: Text("Profile",style: TextStyle(fontSize: 24.0),),
                  leading: Icon(Icons.person)
              ),
              ListTile(
                  title: Text("Settings",style: TextStyle(fontSize: 24.0),),
                  leading: Icon(Icons.settings)
              ),
              ListTile(
                  title: Text("FAQ",style: TextStyle(fontSize: 24.0),),
                  leading: Icon(Icons.find_replace_sharp)
              ),
              ListTile(
                title: Text("change font size",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                leading: Icon(Icons.zoom_in_sharp),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 190.0,),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
              ),
              padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
            )
          ],
        ),
      ),
    );
  }
}
