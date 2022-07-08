import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey_app/survey/cubit/responses_cubit.dart';
import 'package:survey_app/survey/cubit/survey_cubit.dart';
import 'package:survey_app/survey/repository/survey_repository.dart';

import 'package:survey_app/survey/views/widgets/widgets.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SurveyCubit(
            surveyRepository: context.read<SurveyRepository>(),
          )..fetchSurvey(),
        ),
        BlocProvider(
          create: (context) => ResponsesCubit(
            surveyRepository: context.read<SurveyRepository>(),
          )..fetchResponse(),
        ),
      ],
      child: const Scaffold(
        appBar: MainAppBar(),
        body: _Body(),
      ),
    );
  }
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Survey App'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurveyCubit, SurveyState>(
      builder: (context, state) {
        return state.when(
          noSurvey: () => const NoSurveyWidget(),
          loading: () => const LoadingWidget(),
          loaded: (survey) => SurveyWidget(survey: survey),
          error: (error) => CustomErrorWidget(error: error),
        );
      },
    );
  }
}
