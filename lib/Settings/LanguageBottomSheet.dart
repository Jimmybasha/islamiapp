import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/Settings/SelectedItem.dart';
import 'package:islamiapp/Settings/UnselectedItem.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            SelectedItem(title:settingsProvider.Language=="en"?"English":"العربية"),
            const SizedBox(height: 20),
            InkWell(
              onTap: (){

                if(settingsProvider.Language=="ar"){
                  settingsProvider.changeLanguage("en");
                }else{
                  settingsProvider.changeLanguage("ar");
                }
                Navigator.pop(context);

              },
                child: UnselectedItem(title: settingsProvider.Language=="en"?"العربية":"English")
            )
        ],
      ),
    );
  }
}
