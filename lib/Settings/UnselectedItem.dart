import 'package:flutter/material.dart';

class UnselectedItem extends StatelessWidget {

  String title;
  UnselectedItem({required this.title});


  @override
  Widget build(BuildContext context) {
    return  Text(title,
      style: Theme.of(context).textTheme.titleMedium
    );
  }
}
