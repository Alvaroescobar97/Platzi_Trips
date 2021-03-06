import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/imgs/sunset.jpeg"),
          CardImage("assets/imgs/beach_palm.jpeg"),
          CardImage("assets/imgs/beach.jpeg"),
          CardImage("assets/imgs/mountain.jpeg"),
          CardImage("assets/imgs/mountain_stars.jpeg"),
          CardImage("assets/imgs/river.jpeg")
        ],
      ),
    );
  }

}