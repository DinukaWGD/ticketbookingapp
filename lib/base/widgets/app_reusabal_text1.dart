import 'package:first_app/base/res/styles/AppStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/fullTicketList.dart';

class AppReusabalText extends StatelessWidget {
  final String bigtext;
  final String smallText;
  final VoidCallback func;
  const AppReusabalText({super.key,required this.bigtext,required this.smallText,required this.func});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigtext,style:AppStyles.textstyle3),
        InkWell(
          onTap:func,
          child: Text(smallText,style:AppStyles.textstyle4.copyWith(
            color: AppStyles.primaryColor
          ))
        )
      ],
    );
  }
}
