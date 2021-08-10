import 'package:flutter/material.dart';
import 'package:platzi_trips/card_image_list.dart';
import 'package:platzi_trips/gradient_back.dart';

class HeaderAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Popular"),
        CardImageList()
      ],
    );
  }
}