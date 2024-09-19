import 'dart:ui';

import 'package:first_app/base/res/styles/AppStyles.dart';
import 'package:first_app/base/widgets/app_layout_builder.dart';
import 'package:first_app/base/widgets/big_dot.dart';
import 'package:first_app/base/widgets/textStyleFourth.dart';
import 'package:first_app/base/widgets/textStyleThird.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'appColumnOrange.dart';
import 'big_circle.dart';

class tickets_View extends StatelessWidget {
  final Map <String,dynamic> ticket;
  final bool wholescScreen;
  const tickets_View({super.key,required this.ticket,required this.wholescScreen});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Container(
        margin:  EdgeInsets.only(right:wholescScreen==true?0:16),
        child: Column(
          children: [
            //container for blue part
            Container(
              padding: EdgeInsets.all(16),
              //margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  color: AppStyles.ticket_color1,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //show the depature places with icons in first line
                  Row(
                    children: [

                       TextStyleThird(textThird: ticket["from"]["code"]),


                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: app_builder(randomDevider: 6),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(Icons.local_airport_rounded,
                                      color: Colors.white))),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),

                        TextStyleThird(textThird: ticket["to"]["code"]),


                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  //show the depature places with name in second line
                  Row(
                    children: [
                       SizedBox(
                        width: 100,
                        child:
                        TextStyleFourth(textFourth: ticket["from"]["name"] ),

                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(textFourth:ticket["flying_time"]),

                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child:
                        TextStyleFourth(textFourth:ticket["to"]["name"],textalign:TextAlign.end ),

                      ),
                    ],
                  ),
                ],
              ),
            ),

            //container for half cicle
            Container(
              color: AppStyles.ticket_color2,
              child: const Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(child: app_builder(randomDevider: 16,width: 6,)),
                  BigCircle(
                    isRight: true,
                  )
                ],
              ),
            ),

            //container for orange part
            Container(
              padding: EdgeInsets.all(16),
              //margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  color: AppStyles.ticket_color2,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnOrange(topText:ticket["date"],botttomText:"Date",crossAxisAlign: CrossAxisAlignment.start,),
                  AppColumnOrange(topText:ticket["departure_time"],botttomText:"Departure Time",crossAxisAlign: CrossAxisAlignment.center,),
                  AppColumnOrange(topText:ticket["number"].toString(),botttomText:"Number",crossAxisAlign: CrossAxisAlignment.end,)


                ],
              )
              ,
            ),
          ],
        ),
      ),
    );
  }
}
