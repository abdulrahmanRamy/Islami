import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/app_color.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:provider/provider.dart';

import 'language_buttom_sheet.dart';

class ThemeButtomSheet extends StatefulWidget {
  const ThemeButtomSheet({super.key});

  @override
  State<ThemeButtomSheet> createState() => _ThemeButtomSheetState();
}

class _ThemeButtomSheetState extends State<ThemeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDarkMode()?
                getSelctedItemWidget(AppLocalizations.of(context)!.dark,):
                getUnSelctedItemWidget(AppLocalizations.of(context)!.dark,)
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.isDarkMode()?
            getUnSelctedItemWidget(AppLocalizations.of(context)!.light,):
            getSelctedItemWidget(AppLocalizations.of(context)!.light,)
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }

  Widget getSelctedItemWidget(String text){
    return Row(
      children: [
        Text(text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppColor.bageColor,
          ),),
        SizedBox(width: 250,),
        Icon(Icons.check,size: 25,color: AppColor.bageColor,)
      ],
    );
  }

  Widget getUnSelctedItemWidget(String text){

    return Text(text,
    style: Theme.of(context).textTheme.bodySmall,);
  }
}
