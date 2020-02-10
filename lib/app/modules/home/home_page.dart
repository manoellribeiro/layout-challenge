import 'package:first_desafio/app/modules/home/components/productCard/productCard_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _scrollController;
  String imageLocation = "images/watch.jpg";

  _scrollListener(){
    if (_scrollController.offset >= (_scrollController.position.maxScrollExtent/2)){
        setState(() {
          imageLocation = "images/watch2.jpg";
      });
    }else if (_scrollController.offset < (_scrollController.position.maxScrollExtent/2)){
      setState(() {
        imageLocation = 'images/watch.jpg';
      });
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController(); 
    _scrollController.addListener(_scrollListener); 
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight*0.85,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageLocation)
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                height: screenHeight*0.4,
                width: double.infinity,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/itemPage', arguments: 'images/watch.jpg');
                          },
                          child: ProductCardWidget(
                            "Watch ",
                            "The Watch, YYY Leather series features a stainless steel 39mm case, with a fixed bezel, a white dial and a scratch resistant mineral crystal.",
                             165.98,
                             325.00,
                             "A4592227"),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/itemPage', arguments: 'images/watch2.jpg'); 
                        },
                        child: ProductCardWidget(
                        "Watch 2",
                        "The Watch 2, YYY Leather series features a stainless steel 39mm case, with a fixed bezel, a white dial and a scratch resistant mineral crystal.",
                         165.98,
                         325.00,
                         "A4592227"),
                          ),
                         Padding(
                           padding: EdgeInsets.only(right: 30),)
                    ],
                  ),
                ),
              ),
            )),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15,),),
              ),)
        ],
      ),
      );
  }
}