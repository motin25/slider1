import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Easy Explanation', style: TextStyle(fontSize: _value),),
            Slider(
                min: 10,
                max: 50,
                value: _value, onChanged: (value){
              setState(() {
                _value =value;
              });
            }),
          ],
        ),
      ),
    );
  }
}



