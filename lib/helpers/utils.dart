import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/question.dart';
import 'appcolors.dart';

class utils {

  static List<Category> get_categories() {

    return [
      Category(
        color: AppColors.blue7,
        name: "Fiche",
        imgName: "cat1",
      ),
      Category(
          color: AppColors.blue6,
          name: "Carte d'empathie",
          imgName: "cat2",
      ),
      Category(
          color: AppColors.blue5,
          name: "Journey map",
          imgName: "cat3",
      ),
    ];
  }

  static List<Question> get_questions() {
    return [
      Question(
        color: Colors.blue,
        name: "Question 1"
      ),
      Question(
          color: Colors.blue,
          name: "Question 2"
      ),
      Question(
          color: Colors.blue,
          name: "Question 3"
      ),
      Question(
          color: Colors.blue,
          name: "Question 4"
      )
    ];
  }
}