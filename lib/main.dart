import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class  DicePage extends StatefulWidget {
  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int left=1;
  int right=1;
  void add1(){
    left=Random().nextInt(6)+1;
  }
  void add2(){
    right=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Text('Player 1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40.0),),
            Expanded(
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        add1();
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$left.png'),
                    ),),),
            SizedBox(
              height: 30.0,
            ),
            Text('Player 2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40.0),),
            Expanded(
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        add2();
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$right.png'),
                    ),),),
          ],
        ),
      ),
    );
  }
}


