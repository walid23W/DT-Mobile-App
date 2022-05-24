import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/question.dart';



class questionCard extends StatelessWidget {

  Question? question;
  Function? onCardClick;

  questionCard({Key? key,  this.question, this.onCardClick }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick!();
      },
      child: Container(
          margin: const EdgeInsets.only(top: 40,left: 35,right: 35),
          height: 40,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              AppColors.blue5.withOpacity(0.8),
                              AppColors.blue5
                            ]))),
              ),
              Positioned(
                bottom: 0,
                left: 90,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Text(question!.name,
                          style: const TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}