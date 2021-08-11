import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "asset/imgs/people.jpg";
  String name = "Alvaro Escobar";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Medellin";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star_half_rounded,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star_border_rounded,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star_rounded,
        color: Color(0xFFf2C611),
      ),
    );

    final lineStars = Container(
      margin: EdgeInsets.only(left: 7.0),
      child: Row(
        children: [star, star, star, starHalf, starBorder],
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [userInfo, lineStars],
        ),
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: [photo, userDetail],
    );
  }
}
