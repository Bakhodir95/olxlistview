import 'package:flutter/material.dart';
import 'package:olxlistview/class/galery.dart';
import 'package:olxlistview/class/plitka.dart';
import 'package:olxlistview/class/spiska.dart';

class PageFirst extends StatefulWidget {
  @override
  State<PageFirst> createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {
  List screens = [
    MainFirstpage(),
  ];
  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.compare_arrows_rounded),
        ),
        title: Text("Olx"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text('Galereya'),
                  value: 0,
                ),
                const PopupMenuItem(
                  child: Text('Spiska'),
                  value: 1,
                ),
                const PopupMenuItem(
                  child: Text('Plitka'),
                  value: 2,
                ),
              ];
            },
            onSelected: (value) {
              currenIndex = value;
              setState(() {});
            },
          ),
        ],
      ),
      body: screens[currenIndex],
    );
  }
}
