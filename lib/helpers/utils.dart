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
        icon: '    ',
      ),
      Category(
          color: AppColors.blue6,
          name: "Empathy card",
          imgName: "cat2",
          icon: '    ',
      ),
      Category(
          color: AppColors.blue5,
          name: "Journey map",
          imgName: "cat3",
          icon: '    ',
      ),
    ];
  }

  static List<Question> get_questions() {
    return [
      Question(
        color: AppColors.blue2,
        name: "Question 1"
      ),
      Question(
          color: AppColors.blue1,
          name: "Question 2"
      ),
      Question(
          color: AppColors.blue6,
          name: "Question 3"
      ),
      Question(
          color: AppColors.blue6,
          name: "Question 4"
      )
    ];
  }
}