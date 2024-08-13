import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modules/layout/screen/hadeth_screen/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/app_color.dart';

class HadethScreen extends StatefulWidget {

  HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> ahadehList = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFile();
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadith_header.png")),
        Divider(
          color: AppColor.bageColor,
          thickness: 3,
        ),
        Text(AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.bodyMedium,

        ),
        Divider(
          color: AppColor.bageColor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: ahadehList.isEmpty ?
              Center(child: CircularProgressIndicator(
                  color: AppColor.bageColor,
              ),)
              :
          ListView.separated(
            separatorBuilder: (context,index)
            {
              return Divider(
                color: AppColor.bageColor,
                thickness: 2,
              );
            },
            itemBuilder: (context,index){
              return ItemHadethName(hadeth:ahadehList[index]);
            },
            itemCount: ahadehList.length,
          ),
        )
      ],
    );
  }

  void loadHadethFile() async
  {
    String hadethContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = hadethContent.split('#\r\n');
    for(int i =0;i < hadethList.length; i++)
      {
        List<String> hadethLines =  hadethList[i].split('\n');
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        Hadeth hadeth = Hadeth(title: title, content: hadethLines);
        ahadehList.add(hadeth);
        setState(() {


        });
      }
  }
}

class Hadeth{
  String title;
  List<String> content;
  Hadeth({required this.title,required this.content});
}
