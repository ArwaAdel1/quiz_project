import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:programming/Q1.dart';

void main()
{
  runApp(Programming());
}

class Programming extends StatelessWidget {
   Programming({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff556b2f),
          centerTitle: true,
          elevation: 12.0,
          title: Text(
            'C++',
            style:TextStyle(
              fontSize: 46.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        body: Q1(),



      ),

    );
  }
}
