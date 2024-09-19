import 'package:first_app/base/res/styles/AppStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../base/res/media.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width:size.width*0.6,
      height: 350,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color: AppStyles.primaryColor,),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(14),image: const DecorationImage(fit:BoxFit.cover,image: AssetImage(AppMedia.hotel1inside))),
          ),

          const SizedBox(height: 20),
          Text("Open Space",style: AppStyles.textstyle3.copyWith(color: AppStyles.hotelview_color1)),

          const SizedBox(height: 5),
          Text("London",style: AppStyles.textstyle3.copyWith(color: Colors.white)),

          const SizedBox(height: 5),
          Text("\$25/night",style: AppStyles.textstyle1.copyWith(color: AppStyles.hotelview_color1)),



        ],
      ),
    );
  }
}
