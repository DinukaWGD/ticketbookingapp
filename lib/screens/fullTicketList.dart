import 'package:first_app/base/utils/all_json.dart';
import 'package:first_app/base/widgets/tickets_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullTicketList extends StatelessWidget {
  const FullTicketList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      body:ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children:ticketList.map((singleTicket) => Container( margin:const EdgeInsets.only(bottom:  20),child: tickets_View(ticket:singleTicket,wholescScreen:true))).toList(),
            ),
          ),
        ],
      )

    );
  }
}
