import 'package:flutter/material.dart';
import 'package:islami/core/widget/bg_widget.dart';
import 'package:islami/modules/layout/screen/hadeth_screen/hadeth_screen.dart';
import 'package:islami/modules/layout/screen/qibla_screen.dart';
import 'package:islami/modules/layout/screen/quran_screen/quran_screen.dart';
import 'package:islami/modules/layout/screen/radio_screen.dart';
import 'package:islami/modules/layout/screen/sbha_screen.dart';
import 'package:islami/modules/layout/screen/setting_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:provider/provider.dart';

class LayoutScreen extends StatefulWidget {
  static const String routName = "Layout";
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selctedIndex = 0;
  List<Widget> screen = [
    QuranScreen(),
    HadethScreen(),
    SbhaScreen(),
    RadioScreen(),
    SettingScreen()
  ];
  late List<String?> titles = [];
  @override
  Widget build(BuildContext context) {
    titles = [
      AppLocalizations.of(context)?.app_title,
      AppLocalizations.of(context)?.hadeth,
      AppLocalizations.of(context)?.sebha,
      AppLocalizations.of(context)?.radio,
      AppLocalizations.of(context)?.settings,];
    return BgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(titles[selctedIndex]!,),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selctedIndex = value;
            setState(() {
            });
          } ,
          currentIndex: selctedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/quran (1).png")),label: AppLocalizations.of(context)!.quran,),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/quran-quran-svgrepo-com.png")),label: AppLocalizations.of(context)!.hadeth,),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha_blue.png")),label: AppLocalizations.of(context)!.sebha,),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/radio.png")),label: AppLocalizations.of(context)!.radio,),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),label: AppLocalizations.of(context)!.settings,),

          ],
        ),

        body: screen[selctedIndex],



      ),
    );
  }
}


