import 'package:artifitia_quiz_app/features/quiz/data/models/question_model.dart';

abstract class QuestionApiSource {
  /// Get the questions from the API
  Future<List<QuestionModel>> getQuestions();
}
