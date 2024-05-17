import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Spiska extends StatelessWidget {
  const Spiska({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView(
        children: [
          for (var i = 0; i < 4; i++)
            GalleryItem(
              "kamaz",
              "Universal pult",
              "Yangi",
              "Tahskent, Uchtepa",
              "5000",
            )
        ],
      ),
    );
  }
}

class GalleryItem extends StatefulWidget {
  final String image;
  final String text1;
  final String position;
  final String city;
  final String price;

  GalleryItem(
    this.image,
    this.text1,
    this.position,
    this.city,
    this.price,
  );

  @override
  State<GalleryItem> createState() => _GalleryItemState();
}

class _GalleryItemState extends State<GalleryItem> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              height: screenHeight / 4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "images/${widget.image}.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(15),
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                  ),
                  color: Color.fromARGB(255, 60, 237, 154),
                ),
                child: Text(
                  "TOP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${widget.text1}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_border)
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('${widget.position}'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "${widget.price}so'm",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("${widget.city}")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
