import 'package:flutter/material.dart';

class ItemSurahDetalis extends StatelessWidget {
  String content;
  int index;
   ItemSurahDetalis({required this.content, required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content(${index+1})',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,

    );
  }
}
