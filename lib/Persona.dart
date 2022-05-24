import 'package:ethnography/categorylist.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'fiche.dart';
import  'package:ethnography/helpers/appcolors.dart';

class Persona extends StatefulWidget {

  const Persona({Key? key}) : super(key: key);


  @override
  State<Persona> createState() => _Personastate();
}

class _Personastate extends State<Persona> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(

        child: Stack(
          children: [
            const Image(
          image: AssetImage(
          'Images/persona.jpg',
        ),
              width: 423,
              height: 454,
              alignment: AlignmentDirectional.bottomCenter,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Ethnographic ',
                        style: TextStyle(backgroundColor: AppColors.blue2,fontSize: 17,fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(text: 'Research', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                  ],
                ),
              ) ,
                    const SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      'Images/persona.jpg',
                      width: 242.69,
                      height: 332.22,
                    ),
                    const Text(
                      "We are what we do",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "With Ethnographic research  Know better Know more",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ConstrainedBox(
                      constraints:
                      const BoxConstraints.tightFor(width: 400, height: 50),
                      child: ElevatedButton(
                        child: Text(
                          "get started  !".toUpperCase(),
                          style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(AppColors.blue7),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: AppColors.blue7))),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => categorylist()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}