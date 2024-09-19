import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/styles/AppStyles.dart';

class AppColumnOrange extends StatelessWidget {
  final String topText;
  final String botttomText;
  final CrossAxisAlignment crossAxisAlign;
  const AppColumnOrange({super.key,required this.topText,required this.botttomText,required this.crossAxisAlign});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlign,
      children: [
        Text(topText,
            style: AppStyles.textstyle3
                .copyWith(color: Colors.white)),
        Text(botttomText,
            style: AppStyles.textstyle4
                .copyWith(color: Colors.white)),
      ],
    );
  }
}
