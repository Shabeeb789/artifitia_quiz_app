import 'package:artifitia_quiz_app/core/exceptions/quiz/base_exception.dart';

final class CannotGetQuestionsException extends BaseException {
  CannotGetQuestionsException()
      : super('Cannot get the questions. Please try again.');
}
