import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/app_color.dart';
import 'package:islami/modules/layout/screen/hadeth_screen/hadeth_screen.dart';
import 'package:islami/modules/layout/screen/quran_screen/item_surah_detalis.dart';
import 'package:provider/provider.dart';

import '../../../../core/widget/bg_widget.dart';
import '../../../../provider/app_provider.dart';
import 'item_hadeth_details.dart';

class HadethDetails extends StatefulWidget {
  static const String routName = 'hadeth_details';

  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<HadethDetails> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppProvider>(context);
    return BgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title,
          ),
        ),
        body: Center(
    child:Container(
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
          child: ListView.builder(
            itemBuilder: (context,index)
            {
              return ItemHadethDetails(content:args.content[index]
              );
            },
            itemCount: args.content.length


          ),
        ),
      ),
      )
    );
  }

}
