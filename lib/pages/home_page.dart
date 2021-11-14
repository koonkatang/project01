import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project01/pages/gasha_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.height/2,
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                builder:(context) => GaSha()
              ));
            },
            child: Card(
              color: Colors.indigo,
              elevation: 5.0,
              child: Center(child: Text('เริ่มทดสอบระบบการสุ่ม ',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),),
            ),
          ),
        ),
      )



    );
  }
}
