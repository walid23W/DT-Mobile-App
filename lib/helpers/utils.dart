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
  static List<Question> get_questions_map() {
    return [
      Question(
          color: AppColors.blue2,
          name: "Awarness 1"
      ),
      Question(
          color: AppColors.blue1,
          name: "Awarness 2"
      ),
      Question(
          color: AppColors.blue6,
          name: "Consideration 1"
      ),
      Question(
          color: AppColors.blue6,
          name: "Consideration 2"
      ),
      Question(
          color: AppColors.blue6,
          name: "Decision"
      ),
      Question(
          color: AppColors.blue6,
          name: "Service"
      ),
      Question(
          color: AppColors.blue6,
          name: "Loyalty"
      )
    ];
  }
}