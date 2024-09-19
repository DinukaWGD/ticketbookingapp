import 'package:first_app/base/res/styles/AppStyles.dart';
import 'package:first_app/base/widgets/app_reusabal_text1.dart';
import 'package:first_app/base/widgets/tickets_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/base/res/media.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../base/utils/all_json.dart';
import 'Hotels/hotelView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:AppStyles.bgcolor,
        body: ListView(


      children: [

        const SizedBox(height:40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning", style: AppStyles.textstyle1),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Book Tickets", style: AppStyles.textStyle2)
                    ],
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(AppMedia.logo))))
                ],
              ),
              SizedBox(height: 25),

              Container(
                  padding:EdgeInsets.symmetric(horizontal:12,vertical:12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color:const Color(0xFFF4F6FD)
                      ),

              child:const Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205)),
                  Text("Search")
                ],
              )
              ),
              const SizedBox(height:40),
               AppReusabalText(bigtext: 'Upcomming Flights', smallText: 'Viewall',func: (){
                Navigator. pushNamed(context, "/fullTicketsListView");
              },),
              const SizedBox(height: 20),

               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                      ticketList.map((singleTicket){
                          return tickets_View(ticket:singleTicket,wholescScreen:false);
                      }

                      ).toList(),

                  )),
              const SizedBox(height: 25),
              AppReusabalText(bigtext: 'Hotels', smallText: 'Viewall',func: (){
                print("hellow");
              },),

              const
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HotelView(),
                    HotelView(),
                    HotelView(),
                    HotelView(),
                    HotelView()

                  ],
                ),
              )

            ],
          ),

        ),

      ],
    ));
  }
}
