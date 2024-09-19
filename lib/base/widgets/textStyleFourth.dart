import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/styles/AppStyles.dart';

class TextStyleFourth extends StatelessWidget {
  final String textFourth;
  final TextAlign textalign;
  const TextStyleFourth({super.key,required this.textFourth,this.textalign=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(textFourth,textAlign:textalign ,
    style: AppStyles.textstyle4
        .copyWith(color: Colors.white));
  }
}
