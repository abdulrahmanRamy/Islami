// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/app_color.dart';
import '../../../provider/app_provider.dart';

class SbhaScreen extends StatefulWidget {

   SbhaScreen({super.key});
   // Function onClick;


   @override
  State<SbhaScreen> createState() => _SbhaScreenState();
}

class _SbhaScreenState extends State<SbhaScreen> {
  int text = 0;
  var angle = 0.0;
  List<String> text2 = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  int index=0;

  // double turns=0;


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(left: 35),
                  child: Image.asset("assets/images/head of seb7a.png",width: 73,height: 105,)),
              Container(
                  padding: EdgeInsets.all(48),
                  child: Transform.rotate(
                      angle: angle,
                      child: Image.asset("assets/images/body of seb7a.png",width: 232,height: 234,))),

            ],
          ),

          Text("عدد التسبيحات", style: TextStyle(
            color:  provider.isDarkMode()?
            AppColor.whiteColor:
            AppColor.blackColor,
            fontSize: 25,
          ),),

          Container(
            margin: EdgeInsets.only(top: 30),
            width: 77,
            height: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffB7935F),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                onPressed: (){
                  // text++;
                }, child:
                Text("$text", style: TextStyle(fontSize: 25,color: Colors.black),)
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 90,right: 90,top: 30,),
                  width: 137,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffB7935F),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                      ),
                      onPressed: (){
                        // turns+=1/4;
                        onClick();
                      }, child:
                  Text(text2[index],style: TextStyle(fontSize: 25,color: Colors.white),)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  onClick(){
    text++;
    angle+=1;
    if(text==33&& index==0){
      index++;
      text=0;
      text2[index];


    }
    else if(text==33&& index==1){
      index++;
      text=0;
      text2[index];

    }
    else if(text==33&& index==2){
      index=0;
      text=0;
      text2[index];
    }
    setState(() {

    });
  }

}
