import 'package:flutter/material.dart';
import 'package:islamiapp/Settings/SelectedItem.dart';
import 'package:islamiapp/Settings/UnselectedItem.dart';

class LanguageBottomSheet extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            SelectedItem(title:"English"),
            const SizedBox(height: 20),
            UnselectedItem(title: "العربية")
        ],
      ),
    );
  }
}
