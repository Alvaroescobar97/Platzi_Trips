import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  
  bool fav = false;

  void onPressedFav(){
    setState(() {
      this.fav = !this.fav;
    });
    
    /*ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Favorito")
      )
    );*/
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        this.fav?Icons.favorite:Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );
  }
}