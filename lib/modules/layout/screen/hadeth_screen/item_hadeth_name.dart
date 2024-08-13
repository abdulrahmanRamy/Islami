import 'package:flutter/material.dart';
import 'package:islami/modules/layout/screen/quran_screen/surah_details.dart';

import 'hadeth_details.dart';
import 'hadeth_screen.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
  ItemHadethName({required this.hadeth, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routName,
          arguments: hadeth);
      },
      child: Text(hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
