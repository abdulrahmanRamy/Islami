import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_theme.dart';
import 'package:islami/modules/layout/layout_screen.dart';
import 'package:islami/modules/layout/screen/hadeth_screen/hadeth_screen.dart';
import 'package:islami/modules/layout/screen/quran_screen/surah_details.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'modules/layout/screen/hadeth_screen/hadeth_details.dart';
import 'modules/splash/screens/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (contex) => AppProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return MaterialApp(
      initialRoute: SplashScreen.routName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.appTheme,
      routes: {
        LayoutScreen.routName : (context) => LayoutScreen(),
        SplashScreen.routName : (context) => SplashScreen(),
        SurahDetails.routName : (context) => SurahDetails(),
        HadethDetails.routName : (context) => HadethDetails(),

      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}