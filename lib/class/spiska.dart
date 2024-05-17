import 'package:flutter/material.dart';
import 'package:olxlistview/class/galery.dart';
import 'package:olxlistview/class/spiskaGallery.dart';

class Spiska extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 60,
          crossAxisSpacing: 5,
          childAspectRatio: 3 / 5,
        ),
        children: [
          for (var i = 0; i < 10; i++)
            Galler2(i % 2 == 0 ? "kamaz" : "damas", "Universal pult", "Yangi",
                "Tahskent, Uchtepa", "5000")
        ]);
  }
}
