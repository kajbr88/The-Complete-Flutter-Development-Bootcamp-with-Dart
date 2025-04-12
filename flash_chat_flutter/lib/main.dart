import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/screens/chat_screen.dart';
// import 'dart:io';

void main() async {
  // WidgetsFlutterBinding
  //     .ensureInitialized(); //ensures all the widgets in flutter are initialized before firebase.
  // Platform.isAndroid ? //checks if platform is android before initializing firebase.
  //      await Firebase.initializeApp(
  //         options: const FirebaseOptions(
  //             apiKey: 'AIzaSyBvrxDld-Bu6MZ-_qVIkCsKVOBNbl4A-0o', 
  //             appId: '1:259947151530:android:e5ab8bb2450b091bf890d3', 
  //             messagingSenderId: '259947151530', 
  //             projectId: 'flash-chat-flutter-a8aa4',
  //             // storageBucket: 'gs://my-app-e7776/appspot.com'// enables us to upload files or images to firebase storage.
  //             ),)
  //     : await Firebase.initializeApp();  

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),//"context" is the current context as the input.
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),     
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}


// In Flutter, the code snippet {Map<String, Widget Function(BuildContext)> routes = const <String, WidgetBuilder>{}} defines a routes variable. Let's break down what each part means:

// Map<String, Widget Function(BuildContext)>: This declares the data type of the routes variable.  It's a Map, which is a data structure that stores key-value pairs.

// String: The keys in this map are strings. These strings typically represent the names of routes (e.g., "/home", "/profile", "/settings").
// Widget Function(BuildContext): The values in this map are functions. Specifically, they are functions that take a BuildContext as an argument and return a Widget. These functions are responsible for building the UI for the corresponding route. This type of function is often referred to as a WidgetBuilder.
// routes: This is the name of the variable.  It's an instance of the Map type described above.  So, routes is a variable that holds a map.

// = const <String, WidgetBuilder>{}: This part initializes the routes map.

// const: The const keyword makes the map immutable. This means that the map itself and its contents cannot be changed after it's created. This is a performance optimization because Flutter can then treat the routes as static.
// <String, WidgetBuilder>: This specifies the type of the map (same as the declaration).
// {}: This creates an empty map. So, initially, the routes map has no routes defined.