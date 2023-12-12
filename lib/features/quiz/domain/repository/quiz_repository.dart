import 'package:artifitia_quiz_app/features/quiz/domain/entities/question_entity.dart';

abstract class QuizRepository {
  Future<List<QuestionEntity>> getQuestions();
}
