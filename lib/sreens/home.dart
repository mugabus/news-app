import 'package:flutter/material.dart';
 class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key});

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.greenAccent,
         title: const Center(
           child: Text('News Papers App'),
         ),
       ),
     );
   }
 }
