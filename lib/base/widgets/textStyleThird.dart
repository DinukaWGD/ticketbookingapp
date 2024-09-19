import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/styles/AppStyles.dart';

class TextStyleThird extends StatelessWidget {
  final String textThird;
  const TextStyleThird({super.key,required this.textThird});

  @override
  Widget build(BuildContext context) {
    return  Text(textThird,
        style: AppStyles.textstyle3
            .copyWith(color: Colors.white));
  }
}
