// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:survey_app/app/app.dart';
import 'package:survey_app/bootstrap.dart';
import 'package:survey_app/initialiser_functions/initialiser_functions.dart';

Future<void> main() async {
  final surveyRepository = await initSurveyRepository();
  await bootstrap(
    () => App(
      surveyRepository: surveyRepository,
    ),
  );
}
