import 'package:flutter/material.dart';
import 'package:islami/core/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
          width: 5,
        ),
        Image.asset(
            "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
        const SizedBox(
          height: 50,
        ),
        const Text("إذاعة القراّن الكريم",
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_next,size: 35,
            color: AppColor.bageColor,),
            Icon(Icons.play_arrow_rounded,size: 60,
              color: AppColor.bageColor,),
            Icon(Icons.skip_next,size: 35,
              color: AppColor.bageColor,),
          ],
        )
      ],
    );
  }
}
