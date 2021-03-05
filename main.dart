import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: null),
            IconButton(icon: Icon(Icons.comment), onPressed: null),
          ],
          leading: Icon(Icons.menu),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.arrow_back_sharp),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text("User Details", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800)),
              SizedBox(height: 20.0),
              Flexible(child:
              TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "First Name",
                    hintText: "Enter your Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
              ),
              SizedBox(height: 20.0),
              Flexible(child:
              TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "Sur Name",
                    hintText: "Enter yourSur Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
              ),
              SizedBox(height: 20.0),
              Flexible(child:
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Email ID",
                  hintText: "Enter your e-mail address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                ),
              ),
              ),
              SizedBox(height: 20.0),
              Flexible(child:
              TextField(
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.left,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                ),
                obscureText: true,
              ),
              ),
              ]
          ),
        ),
      ),
    );
  }
}


