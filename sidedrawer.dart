import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Apply claimz Module",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child:
          AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
            ),
            brightness: Brightness.light,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepOrange,Colors.orange],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                  )
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0), child: Text("Side drawer",style: TextStyle(fontSize: 24.0, color: Colors.black)),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
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
      ),
    );
  }
}
