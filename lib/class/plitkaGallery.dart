import 'package:flutter/material.dart';

class MainFirstpage extends StatelessWidget {
  const MainFirstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        for (var i = 0; i < 4; i++)
          Galler(
              "kamaz", "Universal pult", "Yangi", "Tahskent, Uchtepa", "5000")
      ]),
    );
  }
}

class Galler extends StatefulWidget {
  String image;
  String text1;
  String position;
  String city;
  String price;

  Galler(this.image, this.text1, this.position, this.city, this.price);

  @override
  State<Galler> createState() => _GalleryState();
}

class _GalleryState extends State<Galler> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(
                        "images/${widget.image}.png",
                      ),
                      fit: BoxFit.cover),
                ),
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(10)),
                    color: Color.fromARGB(255, 60, 237, 154),
                  ),
                  child: Text(
                    "TOP",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
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
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Icon(Icons.favorite_border)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${widget.price}so'm",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
