import 'package:flutter/material.dart';
import 'Screen/recipehomepg.dart';


void main(){
  runApp(recipeapp());
}

class recipeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: recipehome());
  }
}



