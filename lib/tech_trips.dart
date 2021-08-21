import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/Place/bloc/bloc_place.dart';
import 'package:platzi_trips/Place/ui/screens/home_trips.dart';
import 'package:platzi_trips/Place/ui/screens/search_trips.dart';
import 'package:platzi_trips/User/ui/screens/profile_trips.dart';

class TechTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TechTrips();
  }
}

class _TechTrips extends State<TechTrips>{
  
  int indexTap = 0;

  final List<Widget> widgetsChildren = [HomeTrips(), SearchTrips(), ProfileTrips()];

  void onTapClicked(int index){
    setState(() {
      indexTap = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapClicked,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home
              ),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search
              ),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person
              ),
              label: ""
            )
          ],
        ),
      ),
    );
  }
}