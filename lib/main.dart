import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hyan/feature/auth/service/pag.dart';
import 'package:hyan/feature/auth/view/firstPage.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [ Locale('ar')],
      path: 'assets/translate', // <-- change the path of the translation files 
      fallbackLocale: Locale('ar',),
      child: MyApp()
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    home:welcomePage()
    // unigedataformobile(),
    );
  }
}
