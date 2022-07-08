import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey_app/survey/cubit/survey_cubit.dart';

class NoSurveyWidget extends StatelessWidget {
  const NoSurveyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No Surveys currently loaded. Tap the button to refresh'),
          const SizedBox(
            height: 16,
          ),
          IconButton(
            onPressed: () {
              context.read<SurveyCubit>().fetchSurvey();
            },
            icon: const Icon(Icons.refresh),
            tooltip: 'Fetch survey',
          ),
        ],
      ),
    );
  }
}
