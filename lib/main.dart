import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:translation/pages/home_page.dart';
import 'package:translation/pages/task2.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [Locale('en','US'),Locale('uz','UZ'),Locale('fr','FR'),Locale('ru','RU'),Locale('ko','KO'),Locale('ja','JA')],
    path: 'assets/translations',
    fallbackLocale: Locale('en','US'),
    child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const TranslationTask2(),
      routes: {
        TranslationPage.id: (context) => TranslationPage(),
        TranslationTask2.id: (context) => TranslationTask2(),
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

