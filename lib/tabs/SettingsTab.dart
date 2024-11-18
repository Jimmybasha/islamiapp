import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/Settings/LanguageBottomSheet.dart';
import 'package:islamiapp/Settings/ThemeBottomSheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class SettingsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return  Container(
      margin:const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Text(
             AppLocalizations.of(context)!.language,
            style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          ),
          const  SizedBox(height: 10),
          InkWell(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context)=>LanguageBottomSheet(),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5
              ),
                alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2,
                )
              ),
              child:  Text(settingsProvider.Language=="en"?"English":"العربية",
                style:   TextStyle(
                 fontSize: 20,
                ),
              ),
            ),
          ),

          const   SizedBox(height: 20),
          
           Text(AppLocalizations.of(context)!.theme,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () => showModalBottomSheet(
                context: context,
                builder: (BuildContext context) =>  ThemeBottomSheet()
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.tertiary,
                    width: 2,
                  )
              ),
              child:   Text(settingsProvider.themeMode==ThemeMode.dark ?
              AppLocalizations.of(context)!.dark:
              AppLocalizations.of(context)!.light,
                style:const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],


      ),
    );
  }
}
