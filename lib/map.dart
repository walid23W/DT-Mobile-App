import 'package:ethnography/questioncard.dart';
import 'package:flutter/material.dart';
import 'categorylist.dart';
import 'choicechip.dart';
import 'models/question.dart';
import 'helpers/utils.dart';

class map extends StatefulWidget {

  @override
  _map createState() => _map();
}

class _map extends State<map>{

  List<Question> questions = utils.get_questions_map();
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Journey Map",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle:FontStyle.italic)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => categorylist()),
            );
          },
        ),
      ),
    body: Stack(
        children: [
        const Align(
        alignment: Alignment(0,-0.95),
        child : Text( "Veuillez répondre au questionnaire suivant :", style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20,fontStyle:FontStyle.italic),)),
         Align(
             child: ListView.builder(
              itemCount: questions.length,
              padding: EdgeInsets.only(top: 30),
              itemBuilder: (BuildContext ctx, int index) {
               return questionCard(
                  question: questions[index],
                  onCardClick: () {
                  switch (index) {
                  case 0:
                   Navigator.push(
                      context,
                        MaterialPageRoute(
                        builder: (context) => ChoiceChipDisplay_map()));
                   break;
                  case 1:
                   Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => ChoiceChipDisplay_map2()));
                   break;
                  case 2:
                   Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => ChoiceChipDisplay_map3()));
                   break;
                  case 3:
                   Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => ChoiceChipDisplay_map4()));
                   break;
                  case 4:
                   Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => ChoiceChipDisplay_map5()));
                    break;
                  case 5:
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChoiceChipDisplay_map6()));
                    break;
                  case 6:
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChoiceChipDisplay_map7()));
                    break;
                  }
                 }
              );
          }
      )
     )]
    ))
    );
  }
  }