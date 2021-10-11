import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TranslationTask2 extends StatefulWidget {
  static final String id = "Translate_page_task2";
  const TranslationTask2({Key? key}) : super(key: key);

  @override
  _TranslationTask2State createState() => _TranslationTask2State();
}

class _TranslationTask2State extends State<TranslationTask2> {
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
                child: Text('welcome1',style: TextStyle(fontSize: 20),).tr(),
              ),
            ),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      context.locale = Locale('ko', 'KO');
                    },
                    child: Text('Korean',style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 10,),
                  FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      context.locale = Locale('ja', 'JA');
                    },
                    child: Text('Japanese',style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
