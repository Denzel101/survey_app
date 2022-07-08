// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:survey_app/l10n/l10n.dart';
import 'package:survey_app/survey/repository/survey_repository.dart';
import 'package:survey_app/survey/survey.dart';
import 'package:survey_app/survey/views/screens/survey_screen.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.surveyRepository}) : super(key: key);

  final SurveyRepository surveyRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: surveyRepository,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color(0xFF13B9FF),
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: const SurveyScreen(),
      ),
    );
  }
}
