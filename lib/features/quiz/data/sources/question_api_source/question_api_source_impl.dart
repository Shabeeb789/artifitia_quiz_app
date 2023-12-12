import 'dart:convert';

import 'package:artifitia_quiz_app/core/exceptions/quiz/cannot_get_questions_exception.dart';
import 'package:artifitia_quiz_app/features/quiz/data/models/option_model.dart';
import 'package:artifitia_quiz_app/features/quiz/data/models/question_model.dart';
import 'package:artifitia_quiz_app/features/quiz/data/sources/question_api_source/question_api_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'question_api_source_impl.g.dart';

class QuestionApiSourceImpl implements QuestionApiSource {
  static const _questionsUrl =
      'https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz';

  /// Http client
  late final http.Client client;

  QuestionApiSourceImpl({required this.client});

  @override
  Future<List<QuestionModel>> getQuestions() async {
    try {
      /// Get data from server
      final response = await client.get(Uri.parse(_questionsUrl));

      if (response.statusCode == 200) {
        final questionsJson = jsonDecode(response.body);

        final questions = <QuestionModel>[];

        for (final q in questionsJson) {
          final options = <OptionModel>[];

          for (final ops in q['options']) {
            options.add(
              OptionModel(
                id: ops['_id'],
                optionTxt: ops['text'],
                isCorrect: ops['isCorrect'],
              ),
            );
          }

          questions.add(
            QuestionModel(
              id: q['_id'],
              questionTxt: q['question'],
              options: options,
            ),
          );
        }

        return questions;
      }
    } catch (e) {
      throw CannotGetQuestionsException();
    }

    throw CannotGetQuestionsException();
  }
}

@riverpod
QuestionApiSource questionApiSource(QuestionApiSourceRef ref) {
  return QuestionApiSourceImpl(client: http.Client());
}
