import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';

class BgWidget extends StatelessWidget {
  Widget child;
   BgWidget({required this.child,required ,super.key,});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage("assets/images/background.png",),
    //         fit: BoxFit.cover,
    //       )
    //   ),
    //   child: child,
    // );
    var provider = Provider.of<AppProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()?
        Image.asset("assets/images/home_dark_background.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,)
            :
        Image.asset("assets/images/background.png",
           width: double.infinity,
           height: double.infinity,
          fit: BoxFit.cover,
        ),
        child ,
      ],
    );

  }
}