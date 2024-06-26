import 'package:flutter/material.dart';

import '../main.dart';

List<Language> lang = <Language>[
  english,
  french
];

const Language english =  Language('En', 'en', Image(image: AssetImage("assets/images/uk-flag.png"),));
const Language french = Language('Fr', 'fr', Image(image: AssetImage("assets/images/fr-flag.png"),));

class Language {
  final String name;
  final Image flag;
  final String code;
  const Language(this.name, this.code, this.flag);
}

class DropdownLang extends StatefulWidget {
  const DropdownLang({super.key});

  @override
  State<DropdownLang> createState() => _DropdownLangState();
}

class _DropdownLangState extends State<DropdownLang> {
  late String dropdownValue;
  late Locale local;

  @override
  Widget build(BuildContext context) {
    local = Localizations.localeOf(context);
    dropdownValue = local.languageCode == english.code ? english.name : french.name;

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_sharp),
      underline:  Container(
        height: 2,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      focusColor: Colors.transparent,
      dropdownColor: Theme.of(context).colorScheme.secondary,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
          value == english.name ?
          value = english.code :
          value = french.code;
          MyApp.setLocale(context, Locale(value!));
        });
      },
      borderRadius:BorderRadius.circular(15),
      items: lang.map<DropdownMenuItem<String>>((Language lang) {
        return DropdownMenuItem<String>(
          value: lang.name,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: lang.flag,
              ),
              Text(lang.name),
            ],
          ),
        );
      }).toList(),
    );
  }
}