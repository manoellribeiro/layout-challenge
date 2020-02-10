import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {

  final String itemTitle;
  final String itemDescription;
  final double itemAtualPrice;
  final double itemPreviousPrice;
  final String itemSerialNumber;

  ProductCardWidget(
    this.itemTitle,
    this.itemDescription,
    this.itemAtualPrice,
    this.itemPreviousPrice,
    this.itemSerialNumber);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight*0.35,
      width: screenWidth*0.8,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 20,
          spreadRadius: 5 )],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(itemTitle, style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold)),
                      Text(itemSerialNumber, style: TextStyle(fontSize: 15, color: Colors.grey))
                    ],
                  ),
                ),
                Icon(Icons.watch, size: 40, color: Colors.brown),
            ],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                itemDescription,
                style: TextStyle(color: Colors.grey, fontSize: 12.5), textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.only(left:8, top: 8),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "\$$itemAtualPrice",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.brown, )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),),
                    Text(
                  "\$$itemPreviousPrice",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.brown.withOpacity(0.5)), ),
              ],),)
          ]
        ),
      ),  
      );
  }
}
