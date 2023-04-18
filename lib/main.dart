import 'package:dps_school/routes/modal_routes.dart';
import 'package:dps_school/utils/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: kStatusBarColor, //set Status bar color in Android devices.
      statusBarIconBrightness: Brightness.dark, //set Status bar icons color in Android devices.
      statusBarBrightness: Brightness.dark) //set Status bar icon color in iOS.
  );

  // await Firebase.initializeApp();
  // Pass all uncaught errors to Crashlytics.
  // FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      // localizationsDelegates: const [
      //   RefreshLocalizations.delegate,
      // ],
      supportedLocales: const [
        Locale('en')
      ],
      title: "DPS",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: getAppRoute(),
      theme: ThemeData(
        fontFamily: 'SFProDisplay',
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashPage(),
    );
  }
}
