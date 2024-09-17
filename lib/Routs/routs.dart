import 'package:flutter/material.dart';
import 'package:payments_application/Screens_and_widgets/AddPayments/Screen/AddPayments.dart';
import 'package:payments_application/Screens_and_widgets/AllPayments/Screen/allpayments.dart';

class RouteGenerator{
   static Route<dynamic> generateRoute(RouteSettings setting){

     switch(setting.name){
       case '/':
         return MaterialPageRoute(builder: (_) => const allpayments());
       case '/addpayments':
         return MaterialPageRoute(builder: (_) => const AddpaymentsPage());
       default:

         return _errorRoute();

     }
   }

   static Route<dynamic> _errorRoute() {
     return MaterialPageRoute(builder: (_) {
       return Scaffold(
         appBar: AppBar(title: const Text('Error')),
         body: const Center(child: Text('Page not found!')),
       );
     });
   }
}