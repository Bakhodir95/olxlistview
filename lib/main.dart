import 'package:flutter/material.dart';
import 'package:olxlistview/page_first.dart';

void main(List<String> args) {
  runApp(Olx());
}

class Olx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageFirst(),
    );
  }
}
