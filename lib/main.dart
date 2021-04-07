import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 2',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Listing"),
      ),
      body: ListView(
        children: [
          ProductBox(
            name: "Acer",
            description: "Ini Laptop Acer Canggih",
            price: 100,
            image: "acer.png",
          ),
          ProductBox(
            name: "Asus ROG",
            description: "Ini Laptop Gaming Sultan",
            price: 999,
            image: "asus-rog.png",
          ),
          ProductBox(
            name: "Asus Vivobook",
            description: "Ini Laptop Asus Tipis",
            price: 120,
            image: "asus-vivobook.png",
          ),
          ProductBox(
            name: "MacBook Pro",
            description: "Ini Laptop Horang Kayah",
            price: 1200,
            image: "macbook.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({this.name, this.description, this.price, this.image});

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/appimages/' + image,
              width: 150.0,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                    ),
                    Text(
                      "Price : \$" + price.toString(),
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
