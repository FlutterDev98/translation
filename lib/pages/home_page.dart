import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TranslationPage extends StatefulWidget {
  static final String id = "Translate_page";
  const TranslationPage({Key? key}) : super(key: key);

  @override
  _TranslationPageState createState() => _TranslationPageState();
}

class _TranslationPageState extends State<TranslationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Translation Page'),),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Expanded(
              child: Center(
                child: Text('welcome',style: TextStyle(fontSize: 20),).tr(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        context.locale = Locale('en', 'US');
                      },
                      child: Text('English',style: TextStyle(color: Colors.white),),
                    ),
                    SizedBox(width: 10,),
                    FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        context.locale = Locale('uz', 'UZ');
                      },
                      child: Text('Uzbek',style: TextStyle(color: Colors.white),),
                    ),
                    SizedBox(width: 10,),
                    FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        context.locale = Locale('ru', 'RU');
                      },
                      child: Text('Russian',style: TextStyle(color: Colors.white),),
                    ),
                    SizedBox(width: 10,),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        context.locale = Locale('fr', 'FR');
                      },
                      child: Text('French',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
