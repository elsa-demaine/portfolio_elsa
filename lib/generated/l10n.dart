// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `v0.2`
  String get version {
    return Intl.message(
      'v0.2',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Bear with me, this site is an alpha version, development is still ongoing. Thank you for your understanding`
  String get warningAlpha {
    return Intl.message(
      'Bear with me, this site is an alpha version, development is still ongoing. Thank you for your understanding',
      name: 'warningAlpha',
      desc: '',
      args: [],
    );
  }

  /// `Elsa Demaine`
  String get appTitle {
    return Intl.message(
      'Elsa Demaine',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `My Github`
  String get github {
    return Intl.message(
      'My Github',
      name: 'github',
      desc: '',
      args: [],
    );
  }

  /// `My Linkedin`
  String get linkedin {
    return Intl.message(
      'My Linkedin',
      name: 'linkedin',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Experiences`
  String get experiences {
    return Intl.message(
      'Experiences',
      name: 'experiences',
      desc: '',
      args: [],
    );
  }

  /// `More experiences`
  String get experiencesExpand {
    return Intl.message(
      'More experiences',
      name: 'experiencesExpand',
      desc: '',
      args: [],
    );
  }

  /// `Diplomas`
  String get diplomas {
    return Intl.message(
      'Diplomas',
      name: 'diplomas',
      desc: '',
      args: [],
    );
  }

  /// `Hard Skills`
  String get skillTitleHard {
    return Intl.message(
      'Hard Skills',
      name: 'skillTitleHard',
      desc: '',
      args: [],
    );
  }

  /// `Soft Skills`
  String get skillTitleSoft {
    return Intl.message(
      'Soft Skills',
      name: 'skillTitleSoft',
      desc: '',
      args: [],
    );
  }

  /// `Mad Skills`
  String get skillTitleMad {
    return Intl.message(
      'Mad Skills',
      name: 'skillTitleMad',
      desc: '',
      args: [],
    );
  }

  /// `ASP.Net`
  String get skillASP {
    return Intl.message(
      'ASP.Net',
      name: 'skillASP',
      desc: '',
      args: [],
    );
  }

  /// `Jira`
  String get skillJira {
    return Intl.message(
      'Jira',
      name: 'skillJira',
      desc: '',
      args: [],
    );
  }

  /// `Trello`
  String get skillTrello {
    return Intl.message(
      'Trello',
      name: 'skillTrello',
      desc: '',
      args: [],
    );
  }

  /// `Personal Project`
  String get elsaTitre {
    return Intl.message(
      'Personal Project',
      name: 'elsaTitre',
      desc: '',
      args: [],
    );
  }

  /// `May 2024 - To date`
  String get elsaDates {
    return Intl.message(
      'May 2024 - To date',
      name: 'elsaDates',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`
  String get elsaInfos {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      name: 'elsaInfos',
      desc: '',
      args: [],
    );
  }

  /// `Alteca`
  String get altecaTitre {
    return Intl.message(
      'Alteca',
      name: 'altecaTitre',
      desc: '',
      args: [],
    );
  }

  /// `March 2022 - To date`
  String get altecaDates {
    return Intl.message(
      'March 2022 - To date',
      name: 'altecaDates',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`
  String get altecaInfos {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      name: 'altecaInfos',
      desc: '',
      args: [],
    );
  }

  /// `Soitec`
  String get soitecTitre {
    return Intl.message(
      'Soitec',
      name: 'soitecTitre',
      desc: '',
      args: [],
    );
  }

  /// `Sept. 2018 - June 2020`
  String get soitecDates {
    return Intl.message(
      'Sept. 2018 - June 2020',
      name: 'soitecDates',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`
  String get soitecInfos {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      name: 'soitecInfos',
      desc: '',
      args: [],
    );
  }

  /// `EPSI`
  String get epsiTitre {
    return Intl.message(
      'EPSI',
      name: 'epsiTitre',
      desc: '',
      args: [],
    );
  }

  /// `2019`
  String get epsiDate {
    return Intl.message(
      '2019',
      name: 'epsiDate',
      desc: '',
      args: [],
    );
  }

  /// `Bachelor Concepteur Développeur Informatique`
  String get epsiDevInfo {
    return Intl.message(
      'Bachelor Concepteur Développeur Informatique',
      name: 'epsiDevInfo',
      desc: '',
      args: [],
    );
  }

  /// `Bachelor Concepteur Intégrateur DevOps`
  String get epsiDevOps {
    return Intl.message(
      'Bachelor Concepteur Intégrateur DevOps',
      name: 'epsiDevOps',
      desc: '',
      args: [],
    );
  }

  /// `Cité Scolaire René Pellet`
  String get csrpTitre {
    return Intl.message(
      'Cité Scolaire René Pellet',
      name: 'csrpTitre',
      desc: '',
      args: [],
    );
  }

  /// `2016`
  String get csrpDate {
    return Intl.message(
      '2016',
      name: 'csrpDate',
      desc: '',
      args: [],
    );
  }

  /// `Bac Pro Gestion - Administration section Européenne Anglais mention très bien`
  String get csrpBacPro {
    return Intl.message(
      'Bac Pro Gestion - Administration section Européenne Anglais mention très bien',
      name: 'csrpBacPro',
      desc: '',
      args: [],
    );
  }

  /// `Hobbies`
  String get hobbies {
    return Intl.message(
      'Hobbies',
      name: 'hobbies',
      desc: '',
      args: [],
    );
  }

  /// `Okami`
  String get okami {
    return Intl.message(
      'Okami',
      name: 'okami',
      desc: '',
      args: [],
    );
  }

  /// `Outer Wilds`
  String get outerWilds {
    return Intl.message(
      'Outer Wilds',
      name: 'outerWilds',
      desc: '',
      args: [],
    );
  }

  /// `Monster Hunter`
  String get monsterHunter {
    return Intl.message(
      'Monster Hunter',
      name: 'monsterHunter',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
