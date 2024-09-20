import 'package:flutter/material.dart';

import '../bloc/addpayments_bloc.dart';

class MyDropDown extends StatelessWidget {
  const MyDropDown({
    super.key,
    required this.selectedindex,
    required this.menuItemslist,
    required this.bloc,
  });

  final String selectedindex;
  final List<String> menuItemslist;
  final AddpaymentsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 190,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: DropdownButton<String>(
        elevation: 0,
        hint: Text("select"),
        value: selectedindex,
        items: menuItemslist.map((String items) {
          return DropdownMenuItem<String>(value: items, child: Text(items));
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            bloc.add(DropDownEvent(selectedItem: value));
          }
        },
      ),
    );
  }
}
