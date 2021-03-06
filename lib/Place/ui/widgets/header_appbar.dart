import 'package:flutter/material.dart';
import 'package:platzi_trips/widgets/gradient_back.dart';

import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Popular",250.0),
        CardImageList()
      ],
    );
  }
}