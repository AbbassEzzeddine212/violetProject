import 'package:flutter/material.dart';



class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const Text('Pages',style: TextStyle(fontSize: 40),textAlign: TextAlign.center,),
          ListTile(
            title: const Text('Payments'),
            onTap: () {
              // Handle tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Notes'),
            onTap: () {
              // Handle tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Reports'),
            onTap: () {
              // Handle tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Users'),
            onTap: () {
              // Handle tap
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}