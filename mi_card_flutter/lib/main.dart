import 'package:flutter/material.dart';

// The basic structure of a Flutter app revolves around widgets. Everything you
// see on the screen is a widget, from buttons and text to layouts and even the
//app itself. These widgets are arranged in a tree-like hierarchy, where parent
//widgets contain and manage their children.
void main() {
  //main.dart: This is the entry point of your Flutter app. It contains the main() function, which uses runApp() to launch your app.
  runApp(
      MyApp()); //runApp(): This function takes a widget as an argument and attaches it to the screen, making it the root of your widget tree. Typically, this is a MaterialApp or CupertinoApp widget.
}

class MyApp extends StatelessWidget {//The MyApp class inherits from StatelessWidget, making it a type of Widget. MyApp class returns a MaterialApp widget, since Classes themselves don't have return types, but depend on its method's return type and here its build method returns MaterailApp hence MyApp returns MaterialApp widget.
//This inheritance is key here: by extending either StatelessWidget or StatefulWidget, MyApp class becomes a type of Widget.
  @override //Both StatelessWidget and StatefulWidget require you to override the build() method.
  Widget build(BuildContext context) {
//The build() method's job is to return another widget (or a tree of widgets). This is where you define the UI that your MyApp widget represents.
// The "Widget build(BuildContext context)" declaration defines a method named build that:
// Takes a BuildContext object as input with context as parameter name, providing information about the widget's location in the widget tree.
// Returns a "Widget" object, which represents the UI that this widget should render.
    return MaterialApp(//This is usually the root widget of your app. It sets up important things like routing, theming, and the overall app structure.
      home: Scaffold(//This widget provides the basic visual layout structure for a screen. It has properties like appBar, body, bottomNavigationBar, etc.
        backgroundColor: Colors.grey[700],
        body: SafeArea(
//SafeArea wraps the content within the Scaffold's body. This widget applies padding to its child to avoid intrusions from system UI elements.
            child: Column(//SafeArea can only have one direct child
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[// <Widget>[] creates a list that can hold any type of widget.
            CircleAvatar(
              radius: 55.0,
              backgroundImage: AssetImage('images/abhijeet.jpg'),
            ),
            Text(
              'Abhijeet Kumar Barua',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.grey[100],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans 3',
                color: Colors.grey[100],
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.grey[700],
                  ),
                  title: Text(
                    '+91 123 456 789',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontFamily: 'Source Sans 3',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.grey[700],
                  ),
                  title: Text(
                    'abhijeet@email.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[900],
                        fontFamily: 'Source Sans 3'),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}

//App Icon Attribution:
//<a href="https://www.freepik.com/icon/business-card_1064530">Icon by Nikita Golubev</a>

