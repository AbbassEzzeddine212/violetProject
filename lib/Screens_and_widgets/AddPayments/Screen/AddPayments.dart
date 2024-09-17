import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments_application/Screens_and_widgets/AddPayments/bloc/addpayments_bloc.dart';


class AddpaymentsPage extends StatelessWidget {
  const AddpaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    AddpaymentsBloc bloc=AddpaymentsBloc();
    return  BlocConsumer<AddpaymentsBloc, AddpaymentsState>(
      bloc: bloc,
      listenWhen: (prev,current)=>current is AddpaymentsActionState,
      buildWhen: (prev,current)=>current is! AddpaymentsActionState,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add Payments', style: TextStyle(color: Colors.grey),),
          ),
        );
      },
    );
  }
}
