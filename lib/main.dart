import 'package:flutter/material.dart';
import 'mainPage.dart'; //todo: muốn sử dụng class MainPage phải import
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return new MaterialApp(
    title: "Drawer in Flutter ",
    home: new MainPage(), //todo: sử dụng class MainPage
  );
}
}