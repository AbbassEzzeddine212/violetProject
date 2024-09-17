import 'package:flutter/material.dart';
import 'package:payments_application/Screens_and_widgets/AllPayments/Data/data.dart';

class paymenttable extends StatelessWidget {
  const paymenttable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TableData tabledata=TableData();

    return Table(
      columnWidths: const {
        4: FixedColumnWidth(100.0),  // Set width for first column
        1: FlexColumnWidth(),         // Let second column take remaining space
      },
      border: TableBorder.all(),
      children: [
        const TableRow(children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child:  Text("Name",textAlign: TextAlign.center),
          ),
          Text('Type',textAlign: TextAlign.center,),
          Text('Due-Date',textAlign: TextAlign.center),
          Text('payments',textAlign: TextAlign.center),
          Text('Actions',textAlign: TextAlign.center),

        ]),
        ...tabledata.paymenttable.map((item){
          return TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child:  Text(item['name']!,textAlign: TextAlign.center),
              ),
              Text(item['type']!, textAlign: TextAlign.center),
              Text(item['dueDate']!, textAlign: TextAlign.center),
              Text(item['payments']!, textAlign: TextAlign.center),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 34,child: IconButton(onPressed: (){}, icon: const Icon(Icons.edit_outlined))),
                  SizedBox(width: 34,child: IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline,color: Colors.red,))),
                  SizedBox(width: 30,child: IconButton(onPressed: (){}, icon: const Icon(Icons.paid_outlined,color: Colors.green,))),

                ],
              )
            ]
          );
        })
      ],
    );
  }
}
// TableRow(children: [
// Padding(
// padding: EdgeInsets.only(top: 20,),
// child: Text('',textAlign: TextAlign.center),
// ),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// Row(
//
// children: [
// SizedBox(width: 35,child: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined,size: 20,))),
// SizedBox(width: 35,child: IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,size: 20,color: Colors.red,))),
// SizedBox(width: 30,child: IconButton(onPressed: (){}, icon: Icon(Icons.paid_outlined,size: 20,))),
//
//
// ],
// ),
//
// // Text('sdds',textAlign: TextAlign.center),
// ]),
// TableRow(children: [
// Padding(
// padding: EdgeInsets.only(bottom: 20),
// child: Text('',textAlign: TextAlign.center),
// ),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// ]),
// TableRow(children: [
// Padding(
// padding: EdgeInsets.only(bottom: 20),
// child: Text('',textAlign: TextAlign.center),
// ),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// Text('',textAlign: TextAlign.center),
// ]),