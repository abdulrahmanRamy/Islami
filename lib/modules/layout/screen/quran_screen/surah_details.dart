import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/app_color.dart';
import 'package:islami/modules/layout/screen/quran_screen/item_surah_detalis.dart';
import 'package:provider/provider.dart';

import '../../../../core/widget/bg_widget.dart';
import '../../../../provider/app_provider.dart';

class SurahDetails extends StatefulWidget {
  static const String routName = 'surah_details';

   SurahDetails({super.key});

  @override
  State<SurahDetails> createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<SurahDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SurahDetailsArgs;
    var provider = Provider.of<AppProvider>(context);
    if(verses.isEmpty)
      {
        loadFile(args.index);
      }
    return BgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name,
          ),
        ),
        body: verses.isEmpty ?
            Center(
              child: CircularProgressIndicator(
                color: AppColor.bageColor,
              ),) :
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width*0.05,
              vertical: MediaQuery.of(context).size.height*0.06,
          ),
          decoration: BoxDecoration(
            color: provider.isDarkMode()?
              AppColor.darkColor:
                AppColor.whiteColor,
            borderRadius: BorderRadius.circular(25)
          ),
          child: ListView.separated(
            separatorBuilder: (context,index)
            {
              return Divider(
                color:  provider.isDarkMode()?
                AppColor.yellowColor:
                AppColor.bageColor,
                thickness: 2,
              );
            },
              itemBuilder: (context,index)
                  {
                    return ItemSurahDetalis(content:verses[index],index: index

                    );
                  },
            itemCount: verses.length,


          ),
        ),
      ),
    );
  }

  void loadFile(int index)async
  {
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}
  class SurahDetailsArgs
  {
    String name;
    int index;
    SurahDetailsArgs({required this.name,required this.index});
  }

