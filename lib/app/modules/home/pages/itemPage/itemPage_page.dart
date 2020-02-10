import 'package:first_desafio/app/modules/home/components/itemInformations/itemInformations_widget.dart';
import 'package:flutter/material.dart';

class ItemPagePage extends StatefulWidget {
  final String title;
  final String imageLocation;
  const ItemPagePage({Key key, this.title = "ItemPage", this.imageLocation}) : super(key: key);

  @override
  _ItemPagePageState createState() => _ItemPagePageState();
}

class _ItemPagePageState extends State<ItemPagePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
           Align(
          alignment: Alignment.topLeft,
          child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 25),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15,),),
                ),
              ),
              ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                          child: Container(
                            width: screenWidth*0.9,
                            height: screenHeight*0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.imageLocation)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                    )),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 20),
                    child: Text(
                    "\$165.98",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.brown, )),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 15, top: 20),
                     child: Icon(Icons.watch, size: 40, color: Colors.brown),
                   )   
                ],),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.5),),
                ItemInformationsWidget("Band Type", "Strap"),
                ItemInformationsWidget("Band Width", "18 mm"),
                ItemInformationsWidget("Bezel Material", "Stainless Steel"),
                Padding(
                  padding: EdgeInsets.only(left: 35, top: 15, right: 25),
                  child: Text(
                    "YYY Leather series features a stainless steel 39mm case, with a fixed bezel, a white dial and a scratch resistant mineral crystal.",
                    style: TextStyle(
                      color: Colors.grey, fontSize: 12.5), textAlign: TextAlign.justify,) ),
                Padding(
                  padding: EdgeInsets.only(left: 35, top: 10, right: 15),
                  child: Text(
                    "2 Year WatchCenter Warranty and keep receipt",
                    style: TextStyle(
                      color: Colors.grey, fontSize: 12.5),) ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top:15 , right: 20),
                  child: Container(
                    width: screenWidth - 60,
                    decoration: BoxDecoration(
                    ),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text("ADD TO BAG        +",
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                         )),
                      color: Colors.brown,
                      onPressed: (){

                      },),),
                )
            ],
          )
        ],)
    );
  }
}
