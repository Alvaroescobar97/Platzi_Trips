import 'package:flutter/material.dart';
import 'package:platzi_trips/review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review("assets/imgs/traveler.jpg", "Leydi Rubio", "1 review 5 photos", "There is an amazing place in las Bahamas"),
        Review("assets/imgs/traveler.jpg", "Laura Castillo", "1 review 5 photos", "The Bahamas are the best"),
        Review("assets/imgs/traveler.jpg", "Laura Castillo", "1 review 5 photos", "The Bahamas are the best"),
        Review("assets/imgs/traveler.jpg", "Laura Castillo", "1 review 5 photos", "The Bahamas are the best"),
        Review("assets/imgs/traveler.jpg", "Laura Castillo", "1 review 5 photos", "The Bahamas are the best")
      ],
    );
  }

}