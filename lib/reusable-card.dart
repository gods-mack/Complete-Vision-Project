import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard({ this.colour,this.cardChild});
  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: cardChild,
    );
  }
}