import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GaSha extends StatefulWidget {
  const GaSha({Key? key}) : super(key: key);

  @override
  _GaShaState createState() => _GaShaState();
}

class _GaShaState extends State<GaSha> {
  void _showMaterialDialog(String title, String picture,) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('รางวัลอธิฐาน',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            content: Expanded(
              child: Column(
                children: [
                Expanded(
                  child: Image.asset(
                    '$picture',
                  ),
                ),
                Text(
                  title,style: TextStyle(fontSize: 22,),textAlign:TextAlign.center,
                ),
              ]),
            ),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.orange),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'อธิฐานตัวละคร',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        _buildHeader(),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 500,
          width: 800,
          child: Image.asset(
            'assets/images/yoibanner.png',
          ),
        ),
        Text(
          'การอธิษฐาน "ทะเลดาวแห่งเปลวเพลิง": โอกาสได้รับ "ประกายเพลิงเริงระบำ - Yoimiya',
          style: TextStyle(fontSize: 22.0),
        ),
        Container(
          height: 20,
          width: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 100,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  String text;
                  String picture;
                  List<String> fourStar = ['assets/images/Character_Sayu_Portrait.png', 'assets/images/Diona_Portrait.png','assets/images/Xinyan_Portrait.png',];
                  List<String> nameFourstar = ['Sayu','Diona','Xinyan'];
                  int _random = Random().nextInt(10) + 1;
                  int _random2 = Random().nextInt(3) ;
                  if (_random == 1) {
                    text = '5 ดาว\nYoimiya';
                    picture = ('assets/images/Character_Yoimiya_Portrait.png');
                    _showMaterialDialog(text, picture, );
                  } else {
                    text = '4 ดาว\n ' + nameFourstar[_random2];
                    picture = fourStar[_random2];
                    _showMaterialDialog(text, picture);
                  }
                },
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  'สุ่ม',
                  style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
