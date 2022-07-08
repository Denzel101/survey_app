// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey_app/survey/cubit/responses_cubit.dart';
import 'package:survey_app/survey/survey.dart';
import 'package:survey_app/survey/views/widgets/widgets.dart';
import 'package:uuid/uuid.dart';

class SurveyWidget extends StatelessWidget {
  const SurveyWidget({Key? key, required this.survey}) : super(key: key);

  final Survey survey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsesCubit, ResponsesState>(
      builder: (context, state) {
        return state.when(
          loading: LoadingWidget.new,
          error: (error) => CustomErrorWidget(error: error),
          loaded: (response) {
            Question? question;
            if (response == null || response.lastAnsweredQuestionId == null) {
              question = survey.questions.firstWhere(
                (element) => element.id == survey.start_question_id,
              );
              return QuestionWidget(question: question, survey: survey);
            }

            question = survey.questions.firstWhere(
              (element) => element.id == response.lastAnsweredQuestionId,
            );
            final questionId = question.next;
            log(question.toString());

            if (questionId == null) {
              return const FinishedSurvey();
            }

            question = survey.questions.firstWhere(
              (element) => element.id == questionId,
            );

            return QuestionWidget(
              question: question,
              survey: survey,
            );
          },
        );
      },
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    Key? key,
    required this.question,
    required this.survey,
  }) : super(key: key);

  final Question question;
  final Survey survey;

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  final answerController = TextEditingController();
  String? answerValue;

  void onNextPressed() {
    if (answerValue?.trim().isEmpty ?? true) {
      return;
    }

    final responseCubit = context.read<ResponsesCubit>();
    final responseState = responseCubit.state;

    if (responseState is Loaded) {
      final answerId = const Uuid().v4();
      final answer = Answer(
        id: answerId,
        questionId: widget.question.id,
        value: answerValue!,
        answerTime: DateTime.now(),
      );
      final response = responseState.response?.copyWith(
            lastAnsweredQuestionId: widget.question.id,
            answers: [
              if (responseState.response != null)
                ...responseState.response!.answers,
              answer,
            ],
          ) ??
          SurveyResponse(
            id: const Uuid().v4(),
            surveyId: widget.survey.id,
            answers: [answer],
            lastAnsweredQuestionId: widget.question.id,
          );
      responseCubit.saveResponse(response: response);
    }
  }

  @override
  void didUpdateWidget(covariant QuestionWidget oldWidget) {
    if (oldWidget.question != widget.question) {
      answerController.text = '';
      answerValue = null;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final survey = widget.survey;
    final question = widget.question;
    final questionText = survey.strings['en']?[question.question_text];
    const verticalSpacing = 16.0;

    if (questionText != null) {
      return Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(questionText.toString()),
            if (question.question_type == 'FREE_TEXT') ...[
              TextFormField(
                controller: answerController,
                onChanged: (newValue) => setState(() => answerValue = newValue),
              ),
              const SizedBox(height: verticalSpacing),
            ],
            if (question.question_type == 'SELECT_ONE') ...[
              DropdownButtonFormField<String?>(
                value: answerValue,
                items: [
                  for (final option in question.options)
                    DropdownMenuItem(
                      value: option.value,
                      child: Text(
                        survey.strings['en']?[option.display_text].toString() ??
                            '',
                      ),
                    ),
                ],
                onChanged: (newValue) {
                  setState(() {
                    answerValue = newValue;
                  });
                },
              ),
              const SizedBox(height: verticalSpacing),
            ],
            if (question.question_type == 'TYPE_VALUE') ...[
              TextFormField(
                controller: answerController,
                onChanged: (newValue) => setState(() => answerValue = newValue),
              ),
              const SizedBox(height: verticalSpacing),
            ],
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: answerValue == null ? null : onNextPressed,
                child: Text(widget.question.next == null ? 'Finish' : 'Next'),
              ),
            ),
          ],
        ),
      );
    }
    return Center(
      child: Text('could not load value'),
    );
  }
}

class FinishedSurvey extends StatelessWidget {
  const FinishedSurvey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Finished the survey. Thank you for your time'),
    );
  }
}
