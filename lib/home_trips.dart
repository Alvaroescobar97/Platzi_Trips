import 'package:flutter/material.dart';
import 'package:platzi_trips/header_appbar.dart';
import 'package:platzi_trips/review_list.dart';

import 'description_place.dart';

class HomeTrips extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace("Bahamas", 4,
                    "Sed feugiat, tortor in consequat tristique, risus nunc molestie lacus, ut viverra ipsum odio non mi. Duis sagittis massa a nisi consectetur auctor. Aenean nec arcu sit amet nisi ultricies eleifend et vel eros. Suspendisse tortor mi, imperdiet vitae velit sed, convallis rutrum odio. Quisque non dictum nunc."),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        );
  }

}