import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments_application/Routs/routs.dart';
import 'package:payments_application/Screens_and_widgets/AddPayments/bloc/addpayments_bloc.dart';
import 'package:payments_application/Screens_and_widgets/AllPayments/Screen/allpayments.dart';
import 'package:payments_application/Screens_and_widgets/AllPayments/bloc/allpyments_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>AllpymentsBloc()),
          BlocProvider(create: (context)=>AddpaymentsBloc()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: allpayments(),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: '/',
        ),
    );
  }
}
