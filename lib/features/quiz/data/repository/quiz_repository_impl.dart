import 'package:artifitia_quiz_app/features/quiz/data/sources/question_api_source/question_api_source.dart';
import 'package:artifitia_quiz_app/features/quiz/data/sources/question_api_source/question_api_source_impl.dart';
import 'package:artifitia_quiz_app/features/quiz/domain/entities/option_entity.dart';
import 'package:artifitia_quiz_app/features/quiz/domain/entities/question_entity.dart';
import 'package:artifitia_quiz_app/features/quiz/domain/repository/quiz_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_repository_impl.g.dart';

final class QuizRepositoryImpl implements QuizRepository {
  final QuestionApiSource apiSource;

  QuizRepositoryImpl({required this.apiSource});

  @override
  Future<List<QuestionEntity>> getQuestions() async {
    final questionModel = await apiSource.getQuestions();

    return [
      for (final q in questionModel)
        QuestionEntity(
          id: q.id,
          questionTxt: q.questionTxt,
          options: [
            for (final ops in q.options)
              OptionEntity(
                id: ops.id,
                optionTxt: ops.optionTxt,
                isCorrect: ops.isCorrect,
              )
          ],
        )
    ];
  }
}

@riverpod
QuizRepository quizRepository(QuizRepositoryRef ref) {
  return QuizRepositoryImpl(apiSource: ref.watch(questionApiSourceProvider));
}
