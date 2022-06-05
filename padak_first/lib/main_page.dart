import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget{
  @override
  _MainPage createState() => _MainPage();
}
class _MainPage extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padak First Project'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Hello Flutter'),
          Text('Hello Flutter'),
        ],
      ),
    );
  }
}