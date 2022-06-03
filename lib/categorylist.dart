import 'package:ethnography/categorycard.dart';
import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'Persona.dart';
import 'ViewResult.dart';
import 'card.dart';
import 'fiche.dart';
import 'map.dart';
import 'models/category.dart';
import 'helpers/utils.dart';

class categorylist extends StatelessWidget {

   categorylist({Key? key, this.value1}) : super(key: key);
  List<Category> categories = utils.get_categories();

  final value1;

  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Persona()),
            );
          },
        ),
      ),
      body : Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top : 10, bottom: 10),
              child : Text("On commence par suivre quelques étapes : ",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,wordSpacing: 2,fontSize: 17),
                   ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fiche(value2 : value1)));
                            break;
                          case 1:
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => card()));
                            break;
                          case 2:
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => map()));
                            break;
                        }
                      }
                  );
                }
                )
            ),
      ])
    )
    ));
  }
}