import 'package:flutter/material.dart';
import 'package:islami/modules/layout/screen/quran_screen/surah_details.dart';

class ItemSurahName extends StatelessWidget {
  String name;
  int index;
   ItemSurahName({required this.name,required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SurahDetails.routName,
            arguments: SurahDetailsArgs(name: name, index: index)
        );
      },
      child: Text(name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
