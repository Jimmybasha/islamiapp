import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'SelectedItem.dart';
import 'UnselectedItem.dart';

class ThemeBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider =  Provider.of<SettingsProvider>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(
              title:settingsProvider.themeMode==ThemeMode.light?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark
          ),
          const SizedBox(height: 20),
          InkWell(
              child: UnselectedItem(
                  title:settingsProvider.themeMode==ThemeMode.light?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light
              ),
            onTap: (){
                if(settingsProvider.themeMode==ThemeMode.light){
                  settingsProvider.changeTheme(ThemeMode.dark);
                }else{
                  settingsProvider.changeTheme(ThemeMode.light);
                }
                Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
