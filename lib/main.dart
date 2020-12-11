import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_translation/pages/home_page.dart';
void main()=>runApp(
  EasyLocalization(
    supportedLocales: [Locale('en', 'US'),Locale('ko','KR'),Locale('ja','JP'),],
    path: 'assets/translation', // <-- change patch to your
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner:false,
    );
  }
}

