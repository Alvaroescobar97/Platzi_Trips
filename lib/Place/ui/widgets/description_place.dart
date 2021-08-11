import 'package:flutter/material.dart';
import 'package:platzi_trips/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy = "Sed feugiat, tortor in consequat tristique, risus nunc molestie lacus, ut viverra ipsum odio non mi. Duis sagittis massa a nisi consectetur auctor. Aenean nec arcu sit amet nisi ultricies eleifend et vel eros. Suspendisse tortor mi, imperdiet vitae velit sed, convallis rutrum odio. Quisque non dictum nunc. Quisque nunc lorem, sagittis quis eros pulvinar, dictum fermentum quam. Donec libero ex, semper sed porta ac, pellentesque ut lorem. ";

  @override
  Widget build(BuildContext context) {
    
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half_rounded,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border_rounded,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_rounded,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace, 
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),

        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder
          ],
        )

      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }

}