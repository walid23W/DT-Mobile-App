import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ethnography/categorylist.dart';
import 'package:flutter/material.dart';
import 'choicechip.dart';
import 'models/question.dart';
import 'helpers/utils.dart';
import 'package:ethnography/questioncard.dart';


class card extends StatelessWidget{

  List<Question> questions = utils.get_questions();

  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Carte d'empathie",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle:FontStyle.italic)),
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
        children: [ const Align(
          alignment: Alignment(0,-0.95),
          child : Text(
            "Ici s'exprime :",
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30,fontStyle:FontStyle.italic),
          )),
          Align(
            alignment: const FractionalOffset(-1,0.8),
               child: Align(
                 alignment: const Alignment(0,-0.8),
                 child : AnimatedTextKit(
            animatedTexts: [
               TypewriterAnimatedText(
                 "Ce qu'on ressent !",
                  textStyle: const TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
            ),
            speed: const Duration(milliseconds: 150),
                 cursor: "",
            ),
               TypewriterAnimatedText(
                 "Ce qu'on entend !",
                 textStyle: const TextStyle(
                 fontSize: 23.0,
                 fontWeight: FontWeight.bold
            ),
                 cursor: "",
                 speed: const Duration(milliseconds: 150),
            ),
              TypewriterAnimatedText(
                "Ce qu'on pense !",
                textStyle: const TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                ),
                cursor: "",
                speed: const Duration(milliseconds: 150),
              )
            ],

    ),
          )),
          Align(
              child: ListView.builder(
                  itemCount: questions.length,
                  padding: EdgeInsets.only(top: 80),
                  itemBuilder: (BuildContext ctx, int index) {
                    return questionCard(
                        question: questions[index],
                        onCardClick: () {
                          switch (index) {
                            case 0:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay()));
                              break;
                            case 1:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChoiceChipDisplay2()));
                              break;
                            case 2:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChoiceChipDisplay3()));
                              break;
                            case 3:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChoiceChipDisplay4()));
                              break;
                          }
                        }
                    );
                  }
              )
          )
        ],

      ),
    )
    );
  }
}