import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/Place/bloc/bloc_place.dart';
import 'package:platzi_trips/User/bloc/bloc_user.dart';
import 'package:platzi_trips/platzi_trips.dart';

void main() {
  // Make the top bar transparent
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  /*
  MaterialApp(
      title: 'Flutter Demo',
      home: PlatziTrips()
    )*/
  @override
  Widget build(BuildContext context) {
    
    /*return MaterialApp(
        title: 'Flutter Demo',
        home: PlatziTrips()
      );*/

    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: PlatziTrips()
      ),
      bloc: PlaceBloc(),
    );
  }
}