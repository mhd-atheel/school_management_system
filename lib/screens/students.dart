import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Students",
          style:  TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xff4FA4F4),),
    );
  }
}
