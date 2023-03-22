import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:school_management_system/screens/splachScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isIOS){
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDBJpVk2KA22YAuw5Z66R2xSookXpBfCJE",
            appId: "1:295074751396:ios:4fc2413777c1d1b35ed731",
            messagingSenderId: "295074751396",
            projectId: "school-management-system-bff13"
        )
    );
  }else if(Platform.isAndroid){
    await Firebase.initializeApp();
  }else{
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDBJpVk2KA22YAuw5Z66R2xSookXpBfCJE",
            appId: "1:295074751396:ios:4fc2413777c1d1b35ed731",
            messagingSenderId: "295074751396",
            projectId: "school-management-system-bff13",
            authDomain: "school-management-system-bff13.firebaseapp.com",
            storageBucket: "school-management-system-bff13.appspot.com",
        )
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: const Color(0xff4FA4F4), //<-- SEE HERE
          displayColor: const Color(0xff4FA4F4), //<-- SEE HERE
        ),
      ),
      home: const SplashScreen(),
    );
  }
}


