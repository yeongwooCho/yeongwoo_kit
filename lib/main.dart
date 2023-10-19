import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:yeongwoo_kit/common/variable/routes.dart';
import 'package:yeongwoo_kit/common/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  await initializeDateFormatting();

  if (kDebugMode) {
    await dotenv.load(fileName: 'asset/config/.development.env');
  } else {
    await dotenv.load(fileName: 'asset/config/.production.env');
  }

  // KakaoSdk.init(
  //   nativeAppKey: dotenv.env['KAKAO_NATIVE_APP_KEY'],
  // );
  // AuthRepository.initialize(
  //   appKey: dotenv.env['KAKAO_JAVA_SCRIPT_APP_KEY']!,
  // );

  // // provider
  // final notificationRepository = NotificationRepository();
  // final notificationProvider =
  // NotificationProvider(repository: notificationRepository);
  //
  // final festivalRepository = FestivalRepository();
  // final festivalProvider = FestivalProvider(repository: festivalRepository);
  //
  // return runApp(
  //   MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider(create: (context) => notificationProvider),
  //       ChangeNotifierProvider(create: (context) => festivalProvider),
  //     ],
  //     child: const MyApp(),
  //   ),
  // );

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('ko', ''), // Korean, no country code
      ],
      onGenerateRoute: (RouteSettings settings) {
        log('current settings: $settings');
        return MaterialPageRoute(
          builder: routes[settings.name!]!,
          settings: settings,
        );
      },
      builder: (context, child) {
        // 휴대폰 글자 크기 제한
        double myTextScaleFacto = 1.1;

        if (MediaQuery.of(context).textScaleFactor >= 1.4) {
          myTextScaleFacto = 1.4;
        }

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: myTextScaleFacto,
          ),
          child: child!,
          // child: child,
        );
      },
      home: SplashScreen(),
    );
  }
}
