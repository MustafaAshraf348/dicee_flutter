import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  void Changer() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  void Reset(){
    setState(() {
      LeftDiceNumber = 1 ;
      RightDiceNumber = 1 ;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Changer();
                          print(LeftDiceNumber);
                        },
                        child: Image.asset('images/dice$LeftDiceNumber.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Changer();
                          print(RightDiceNumber);
                        },
                        child: Image.asset('images/dice$RightDiceNumber.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: RaisedButton(
                    onPressed: (){
                      Reset();
                    },
                      color: Colors.green,
                      colorBrightness: Brightness.light,
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
