import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class app_builder extends StatelessWidget {
  final int randomDevider;
  final double width;

  const app_builder({super.key, required this.randomDevider,this.width=3});



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print("${constraints.constrainWidth().floor()}");

          return Flex(mainAxisAlignment:MainAxisAlignment.spaceBetween,direction: Axis.horizontal, children: [
            ... List.generate((constraints.constrainWidth()/randomDevider).floor(), (index) =>  SizedBox(
              width: width,
              height: 1,
              child: const DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
            ))
            ],);
        });
  }
}
