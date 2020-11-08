import 'package:flutter/material.dart';
import 'package:recipe_app/Model/recipeclass.dart';
import 'package:recipe_app/Screen/reprocess.dart';

class recipehome extends StatefulWidget {
  @override
  _recipehomeState createState() => _recipehomeState();
}

class _recipehomeState extends State<recipehome> {
  @override
  Widget build(BuildContext context) {
    final scrheight = MediaQuery.of(context).size.height;
    final scrwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: Text(
          ' Welcome to Recipe House',
          style: TextStyle(fontSize: 35, fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'Assets/Images/banner1.jpg',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'By Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
                  Text('View all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue)),
                ],
              ),
            ),
            Container(
              height: 70,
              //width: 400,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorycllist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        categorycllist[index].name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'Popular View',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
                  Text('View all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue)),
                ],
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recipecllist.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => reprocess(recipecllist[index])));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 100,
                            width: 110,
                            child: Image.network(
                              recipecllist[index].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          recipecllist[index].name,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'Explorer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
                  Text('View all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue)),
                ],
              ),
            ),
            Container(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  reverse: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: recipecllist.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => reprocess(recipecllist[index])));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 100,
                              width: 110,
                              child: Image.network(
                                recipecllist[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            recipecllist[index].name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
