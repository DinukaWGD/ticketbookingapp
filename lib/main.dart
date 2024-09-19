import 'package:first_app/base/bottom_navbar.dart';
import 'package:first_app/screens/fullTicketList.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
  //print("hellow dart");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        routes:{
          "/":(context) => const BottomNavbar(),
         "/fullTicketsListView":(context) => const FullTicketList(),
        } ,

    );
  }
}



