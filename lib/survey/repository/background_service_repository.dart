// import 'dart:async';
// import 'dart:ui';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_background_service/flutter_background_service.dart';
// import 'package:flutter_background_service_android/flutter_background_service_android.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:survey_app/survey/survey.dart';

// class BackgroundServiceRepository {
//   Future<void> initializeService() async {
//     final service = FlutterBackgroundService();
//     await service.configure(
//       androidConfiguration: AndroidConfiguration(
//         // this will be executed when app is in foreground or background in separated isolate
//         onStart: onStart,

//         // auto start service
//         autoStart: true,
//         isForegroundMode: true,
//       ),
//       iosConfiguration: IosConfiguration(
//         // auto start service
//         autoStart: true,

//         // this will be executed when app is in foreground in separated isolate
//         onForeground: onStart,

//         // you have to enable background fetch capability on xcode project
//         onBackground: onIosBackground,
//       ),
//     );
//     await service.startService();
//   }

//   bool onIosBackground(ServiceInstance service) {
//     WidgetsFlutterBinding.ensureInitialized();
//     print('FLUTTER BACKGROUND FETCH');

//     return true;
//   }

//   void onStart(ServiceInstance service) async {
//     // Only available for flutter 3.0.0 and later
//     DartPluginRegistrant.ensureInitialized();

//     // For flutter prior to version 3.0.0
//     // We have to register the plugin manually
//     final surveyBox = await Hive.openBox<SurveyHiveModel?>('surveys');
//     final responseBox =
//         await Hive.openBox<SurveyResponseHiveModel?>('responses');

//     final localDataSource = LocalDataSource(
//       surveyBox: surveyBox,
//       responseBox: responseBox,
//     );

//     final connectivityResult = await Connectivity().checkConnectivity();

//     if (service is AndroidServiceInstance) {
//       service.on('setAsForeground').listen((event) {
//         service.setAsForegroundService();
//       });

//       service.on('setAsBackground').listen((event) {
//         service.setAsBackgroundService();
//       });
//     }

//     service.on('stopService').listen((event) {
//       service.stopSelf();
//     });

//     // bring to foreground
//     Timer.periodic(const Duration(minutes: 15), (timer) async {
//       final response = await localDataSource.fetchResponse();
//       if (connectivityResult == ConnectivityResult.wifi &&
//           connectivityResult == ConnectivityResult.mobile) {
//             service.invoke(
//         'submit',
//         {
//           'response': response,
//         } as Map<String, dynamic>?,
//       );
//       }
//     });
//   }
// }
