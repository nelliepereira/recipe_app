import 'package:flutter/material.dart';
import 'package:recipe_app/Model/recipeclass.dart';

class reprocess extends StatefulWidget {
  final recipecl obj;
  const reprocess(this.obj);
  @override
  _reprocessState createState() => _reprocessState();
}

class _reprocessState extends State<reprocess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Recipes'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.obj.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 5),
              Container(
                  height: 250, width: 250, child: Image.network(widget.obj.image)),
              SizedBox(height: 5),
              Text('Ingredients', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              textAlign: TextAlign.left,),
              Text(widget.obj.ingredients),
              Text('Cooking Time (Mins)', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                textAlign: TextAlign.left,),
              Text(widget.obj.cookingtime),
              SizedBox(height: 15),
              Text(widget.obj.recipe),
            ],
          ),
        ),
      ),
    );
  }
}
