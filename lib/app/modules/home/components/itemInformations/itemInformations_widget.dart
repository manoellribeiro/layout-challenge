import 'package:flutter/material.dart';

class ItemInformationsWidget extends StatelessWidget {

  final String information;
  final String informationName;

  ItemInformationsWidget(
    this.information, this.informationName
  );


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
                  padding: const EdgeInsets.only(left: 35, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(information,
                       style: TextStyle(
                         fontSize: 12.5,
                        color: Colors.black),
                      ),
                      Text(informationName, style: TextStyle(fontSize: 12.5, color: Colors.grey)),
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:35, right: 25,), 
                  child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                ),
                
      ],);
  }
}
