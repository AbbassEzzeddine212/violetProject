import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments_application/Colors/colors.dart';
import 'package:payments_application/Screens_and_widgets/AddPayments/bloc/addpayments_bloc.dart';
import 'package:payments_application/Screens_and_widgets/AllPayments/Screen/allpayments.dart';

import '../Widgets/AddPayments_TextField.dart';
import '../Widgets/btns.dart';
import '../Widgets/dropdown.dart';

class AddpaymentsPage extends StatelessWidget {
  const AddpaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    AddpaymentsBloc bloc = AddpaymentsBloc();
    return BlocConsumer<AddpaymentsBloc, AddpaymentsState>(
      bloc: bloc,
      listenWhen: (prev, current) => current is AddpaymentsActionState,
      buildWhen: (prev, current) => current is! AddpaymentsActionState,
      listener: (context, state) {
        if(state is SaveAllDataState){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>allpayments()));
        }
      },
      builder: (context, state) {
        List<String> menuItemslist = [];
        List<String> FrequencyItemslist = [];
        String selectedindex = 'System Payment';
        String selectedata = '';
        String selectedFrequency = 'One-Time Fee';
        if (state is DropDownMenuAndSelectedDateState) {
          selectedindex = state.selecteditem;
          menuItemslist = state.menuItem;
          selectedata = state.formattedDate;
          selectedFrequency = state.SelectedFrequency;
          FrequencyItemslist = state.frequencyitems;
        } else if (state is AddpaymentsInitial) {
          selectedFrequency = state.SelectedFrequency;
          FrequencyItemslist = state.frequencyitems;
          selectedindex = state.selecteditem;
          menuItemslist = state.menuItem;
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Add Payments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // runSpacing: 20,
              children: [
                Row(
                  children: [
                    AddPyments_TextField(
                      labletext: 'Name',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    MyDropDown(
                        selectedindex: selectedindex,
                        menuItemslist: menuItemslist,
                        bloc: bloc),
                  ],
                ),
                Row(
                  children: [
                    AddPyments_TextField(
                      controller: TextEditingController(text: selectedata),
                      labletext: 'dd/mm/yyyy',
                      suffixIcon: IconButton(
                          onPressed: () async {
                            DateTime? SelectedDate = await showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));

                            if (SelectedDate != null) {
                              bloc.add(DateEvent(selecteddate: SelectedDate));
                            }
                          },
                          icon: Icon(Icons.date_range)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    AddPyments_TextField(labletext: 'Balance')
                  ],
                ),
                AddPyments_TextField(
                  labletext: 'Nots',
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 53,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: DropdownButton<String>(
                        elevation: 0,
                        hint: Text("select"),
                        value: selectedFrequency,
                        items: FrequencyItemslist.map((String items) {
                          return DropdownMenuItem<String>(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (value) {
                          if (value != null) {
                            bloc.add(FrequncyDropDownEvent(
                                selectedFrequency: value));
                          }
                        },
                      ),
                    ),

                    Row(
                      children: [
                        Text('Paid'),
                        Checkbox(value: false, onChanged: (value){})

                      ],
                    ),
                    Row(
                      children: [
                        Text('Completed'),
                        Checkbox(value: true, onChanged: (value){})

                      ],
                    ),
                  ],
                ),
                    btns(color: Colors.blue,text: 'Save',onTap: (){
                      bloc.add(SaveBtnEvent());
                    },),


              ],
            ),
          ),
        );
      },
    );
  }
}


