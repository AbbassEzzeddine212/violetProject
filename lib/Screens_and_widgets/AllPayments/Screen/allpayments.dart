import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments_application/Colors/colors.dart';
import 'package:payments_application/Screens_and_widgets/AllPayments/bloc/allpyments_bloc.dart';

import '../widgets/Addpayments.dart';
import '../widgets/TablePayments.dart';
import '../widgets/TopRow.dart';
import '../widgets/displayPaid.dart';
import '../widgets/drawer.dart';
import '../widgets/filterPayment.dart';

class allpayments extends StatelessWidget {
  const allpayments({super.key});

  @override
  Widget build(BuildContext context) {
    AllpymentsBloc bloc = AllpymentsBloc();
    return BlocConsumer<AllpymentsBloc, AllpymentsState>(
      bloc: bloc,
      listenWhen: (prev, current) => current is AllpymentsActionState,
      buildWhen: (prev, current) => current is! AllpymentsActionState,
      listener: (context, state) {
        if (state is NavigateToAddPaymentsState) {
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddpaymentsPage()));
          Navigator.pushNamed(context, '/addpayments');
        }
      },
      builder: (context, state) {
        return Scaffold(
          drawer: const drawer(),
          body: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Wrap(
              runSpacing: 20,
              children: [
                const TopRow(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Text(
                      'All Payments',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addPayments(
                      onTap: () {
                        bloc.add(NavigateToAddPaymentsEvent());
                      },
                    ),
                    const displayPaid(),
                    const filterPayments(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: MyColors.customColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: const Text(
                        'All Payments',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const paymenttable(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


