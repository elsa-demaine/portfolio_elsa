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

  /// `v0.4`
  String get version {
    return Intl.message(
      'v0.4',
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
  String get myGithub {
    return Intl.message(
      'My Github',
      name: 'myGithub',
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

  /// `Introduction`
  String get intro {
    return Intl.message(
      'Introduction',
      name: 'intro',
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

  /// `Tools:`
  String get skillTitleTool {
    return Intl.message(
      'Tools:',
      name: 'skillTitleTool',
      desc: '',
      args: [],
    );
  }

  /// `Languages:`
  String get skillTitleLanguage {
    return Intl.message(
      'Languages:',
      name: 'skillTitleLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Others:`
  String get skillTitleOther {
    return Intl.message(
      'Others:',
      name: 'skillTitleOther',
      desc: '',
      args: [],
    );
  }

  /// `Agile`
  String get agile {
    return Intl.message(
      'Agile',
      name: 'agile',
      desc: '',
      args: [],
    );
  }

  /// `Analysis`
  String get analysis {
    return Intl.message(
      'Analysis',
      name: 'analysis',
      desc: '',
      args: [],
    );
  }

  /// `Android Studio`
  String get androidStudio {
    return Intl.message(
      'Android Studio',
      name: 'androidStudio',
      desc: '',
      args: [],
    );
  }

  /// `ASP.Net`
  String get aspNet {
    return Intl.message(
      'ASP.Net',
      name: 'aspNet',
      desc: '',
      args: [],
    );
  }

  /// `Attention to detail`
  String get attentionToDetail {
    return Intl.message(
      'Attention to detail',
      name: 'attentionToDetail',
      desc: '',
      args: [],
    );
  }

  /// `Autonomy`
  String get autonomy {
    return Intl.message(
      'Autonomy',
      name: 'autonomy',
      desc: '',
      args: [],
    );
  }

  /// `French Bilingual`
  String get bilang {
    return Intl.message(
      'French Bilingual',
      name: 'bilang',
      desc: '',
      args: [],
    );
  }

  /// `Big Picture`
  String get bigPicture {
    return Intl.message(
      'Big Picture',
      name: 'bigPicture',
      desc: '',
      args: [],
    );
  }

  /// `Bootstrap`
  String get bootstrap {
    return Intl.message(
      'Bootstrap',
      name: 'bootstrap',
      desc: '',
      args: [],
    );
  }

  /// `C#`
  String get cSharp {
    return Intl.message(
      'C#',
      name: 'cSharp',
      desc: '',
      args: [],
    );
  }

  /// `Collaboration`
  String get collaboration {
    return Intl.message(
      'Collaboration',
      name: 'collaboration',
      desc: '',
      args: [],
    );
  }

  /// `Communication`
  String get communication {
    return Intl.message(
      'Communication',
      name: 'communication',
      desc: '',
      args: [],
    );
  }

  /// `Dart`
  String get dart {
    return Intl.message(
      'Dart',
      name: 'dart',
      desc: '',
      args: [],
    );
  }

  /// `Doctrine`
  String get doctrine {
    return Intl.message(
      'Doctrine',
      name: 'doctrine',
      desc: '',
      args: [],
    );
  }

  /// `Flutter`
  String get flutter {
    return Intl.message(
      'Flutter',
      name: 'flutter',
      desc: '',
      args: [],
    );
  }

  /// `Gherkin`
  String get gherkin {
    return Intl.message(
      'Gherkin',
      name: 'gherkin',
      desc: '',
      args: [],
    );
  }

  /// `Github`
  String get github {
    return Intl.message(
      'Github',
      name: 'github',
      desc: '',
      args: [],
    );
  }

  /// `Gitlab`
  String get gitlab {
    return Intl.message(
      'Gitlab',
      name: 'gitlab',
      desc: '',
      args: [],
    );
  }

  /// `Ionos`
  String get ionos {
    return Intl.message(
      'Ionos',
      name: 'ionos',
      desc: '',
      args: [],
    );
  }

  /// `Initiative`
  String get initiative {
    return Intl.message(
      'Initiative',
      name: 'initiative',
      desc: '',
      args: [],
    );
  }

  /// `Jira`
  String get jira {
    return Intl.message(
      'Jira',
      name: 'jira',
      desc: '',
      args: [],
    );
  }

  /// `jQuery`
  String get jQuery {
    return Intl.message(
      'jQuery',
      name: 'jQuery',
      desc: '',
      args: [],
    );
  }

  /// `Kanban`
  String get kanban {
    return Intl.message(
      'Kanban',
      name: 'kanban',
      desc: '',
      args: [],
    );
  }

  /// `Kind`
  String get kind {
    return Intl.message(
      'Kind',
      name: 'kind',
      desc: '',
      args: [],
    );
  }

  /// `Log4Net`
  String get log4Net {
    return Intl.message(
      'Log4Net',
      name: 'log4Net',
      desc: '',
      args: [],
    );
  }

  /// `Motivated`
  String get motivated {
    return Intl.message(
      'Motivated',
      name: 'motivated',
      desc: '',
      args: [],
    );
  }

  /// `MVC`
  String get mvc {
    return Intl.message(
      'MVC',
      name: 'mvc',
      desc: '',
      args: [],
    );
  }

  /// `MySQL`
  String get mySql {
    return Intl.message(
      'MySQL',
      name: 'mySql',
      desc: '',
      args: [],
    );
  }

  /// `.Net Core`
  String get netCore {
    return Intl.message(
      '.Net Core',
      name: 'netCore',
      desc: '',
      args: [],
    );
  }

  /// `.Net Standard`
  String get netStandard {
    return Intl.message(
      '.Net Standard',
      name: 'netStandard',
      desc: '',
      args: [],
    );
  }

  /// `N-Tiers`
  String get ntiers {
    return Intl.message(
      'N-Tiers',
      name: 'ntiers',
      desc: '',
      args: [],
    );
  }

  /// `Oracle`
  String get oracle {
    return Intl.message(
      'Oracle',
      name: 'oracle',
      desc: '',
      args: [],
    );
  }

  /// `PHP`
  String get php {
    return Intl.message(
      'PHP',
      name: 'php',
      desc: '',
      args: [],
    );
  }

  /// `PHP Storm`
  String get phpStorm {
    return Intl.message(
      'PHP Storm',
      name: 'phpStorm',
      desc: '',
      args: [],
    );
  }

  /// `Proactive`
  String get proactive {
    return Intl.message(
      'Proactive',
      name: 'proactive',
      desc: '',
      args: [],
    );
  }

  /// `Propose Initiatives`
  String get proposeInitiatives {
    return Intl.message(
      'Propose Initiatives',
      name: 'proposeInitiatives',
      desc: '',
      args: [],
    );
  }

  /// `Punctuality`
  String get punctuality {
    return Intl.message(
      'Punctuality',
      name: 'punctuality',
      desc: '',
      args: [],
    );
  }

  /// `Razor`
  String get razor {
    return Intl.message(
      'Razor',
      name: 'razor',
      desc: '',
      args: [],
    );
  }

  /// `SCRUM`
  String get scrum {
    return Intl.message(
      'SCRUM',
      name: 'scrum',
      desc: '',
      args: [],
    );
  }

  /// `Selenium`
  String get selenium {
    return Intl.message(
      'Selenium',
      name: 'selenium',
      desc: '',
      args: [],
    );
  }

  /// `SoapUI`
  String get soapUI {
    return Intl.message(
      'SoapUI',
      name: 'soapUI',
      desc: '',
      args: [],
    );
  }

  /// `SonarQube`
  String get sonarQube {
    return Intl.message(
      'SonarQube',
      name: 'sonarQube',
      desc: '',
      args: [],
    );
  }

  /// `Source Tree`
  String get sourceTree {
    return Intl.message(
      'Source Tree',
      name: 'sourceTree',
      desc: '',
      args: [],
    );
  }

  /// `SQL`
  String get sql {
    return Intl.message(
      'SQL',
      name: 'sql',
      desc: '',
      args: [],
    );
  }

  /// `Symfony`
  String get symfony {
    return Intl.message(
      'Symfony',
      name: 'symfony',
      desc: '',
      args: [],
    );
  }

  /// `Teams`
  String get teams {
    return Intl.message(
      'Teams',
      name: 'teams',
      desc: '',
      args: [],
    );
  }

  /// `Teamwork`
  String get teamwork {
    return Intl.message(
      'Teamwork',
      name: 'teamwork',
      desc: '',
      args: [],
    );
  }

  /// `Tenacious`
  String get tenacious {
    return Intl.message(
      'Tenacious',
      name: 'tenacious',
      desc: '',
      args: [],
    );
  }

  /// `Time management`
  String get timeManagement {
    return Intl.message(
      'Time management',
      name: 'timeManagement',
      desc: '',
      args: [],
    );
  }

  /// `Trello`
  String get trello {
    return Intl.message(
      'Trello',
      name: 'trello',
      desc: '',
      args: [],
    );
  }

  /// `Twig`
  String get twig {
    return Intl.message(
      'Twig',
      name: 'twig',
      desc: '',
      args: [],
    );
  }

  /// `Visual Studio`
  String get visualStudio {
    return Intl.message(
      'Visual Studio',
      name: 'visualStudio',
      desc: '',
      args: [],
    );
  }

  /// `Personal Project`
  String get elsaTitle {
    return Intl.message(
      'Personal Project',
      name: 'elsaTitle',
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

  /// `The goal of this website is to prove to others, and myself, what I am capable of achieving.<br/>During my spare time, I’m self-learning Flutter because I want to expand my horizons.<br/>What caught my attention about Flutter is its unique way of building applications compared to other <tooltip id='Object-oriented programming'>OOP</tooltip> languages.`
  String get elsaInfos {
    return Intl.message(
      'The goal of this website is to prove to others, and myself, what I am capable of achieving.<br/>During my spare time, I’m self-learning Flutter because I want to expand my horizons.<br/>What caught my attention about Flutter is its unique way of building applications compared to other <tooltip id=\'Object-oriented programming\'>OOP</tooltip> languages.',
      name: 'elsaInfos',
      desc: '',
      args: [],
    );
  }

  /// `Alteca`
  String get altecaTitle {
    return Intl.message(
      'Alteca',
      name: 'altecaTitle',
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

  /// `<tooltip id='Third-Party Maintenance'>TPM</tooltip> of a legacy web application to manage environmental directives for Schneider Electric.<br/>Project management in Agile (meetings in English).<br/>Reverse documentation and code refactoring.<br/>Analysis of impact and workload estimations for its implementation.<br/>Development of new features and maintenance of the existing system.<br/>Addition of integration tests.<br/>Deployment of versions on test and production servers.<br/>Client functional support.`
  String get altecaInfos {
    return Intl.message(
      '<tooltip id=\'Third-Party Maintenance\'>TPM</tooltip> of a legacy web application to manage environmental directives for Schneider Electric.<br/>Project management in Agile (meetings in English).<br/>Reverse documentation and code refactoring.<br/>Analysis of impact and workload estimations for its implementation.<br/>Development of new features and maintenance of the existing system.<br/>Addition of integration tests.<br/>Deployment of versions on test and production servers.<br/>Client functional support.',
      name: 'altecaInfos',
      desc: '',
      args: [],
    );
  }

  /// `Soitec`
  String get soitecTitle {
    return Intl.message(
      'Soitec',
      name: 'soitecTitle',
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

  /// `Creation of new features and applications for production automations:<br/>- Priority management,<br/>- Enhancement of user experience,<br/>- Continuous improvement of existing systems.<br/>Interactions with internal clients.`
  String get soitecInfos {
    return Intl.message(
      'Creation of new features and applications for production automations:<br/>- Priority management,<br/>- Enhancement of user experience,<br/>- Continuous improvement of existing systems.<br/>Interactions with internal clients.',
      name: 'soitecInfos',
      desc: '',
      args: [],
    );
  }

  /// `Econocom`
  String get econocomTitle {
    return Intl.message(
      'Econocom',
      name: 'econocomTitle',
      desc: '',
      args: [],
    );
  }

  /// `Jan. 2018 - Feb. 2018`
  String get econocomDates {
    return Intl.message(
      'Jan. 2018 - Feb. 2018',
      name: 'econocomDates',
      desc: '',
      args: [],
    );
  }

  /// `During this 2 months internship in <tooltip id='Digital Application Services'>DAS</tooltip> within the service center of Grenoble, I had the opportunity to work on 2 different missions.<br/><br/>The first was a tablet application used by sales representatives at Roche Diabetes Care. It was a catalog enabling the placement of products and services orders, reserved for healthcare professionals. I contributed to the CCS part of the front end.<br/><br/>The second involved the implementation of a <tooltip id='Proof of concept'>PoC</tooltip> using the EPPlus library. The specifications were:<br/><ul><li>Create a new .Net Core web application,</li><li>Enable the creation of a new blank file or upload an existing file,</li><li>Allow modification of cell values, number of columns etc,</li><li>Ensure the code is generic so it can be used in other applications.</li></ul>`
  String get econocomInfos {
    return Intl.message(
      'During this 2 months internship in <tooltip id=\'Digital Application Services\'>DAS</tooltip> within the service center of Grenoble, I had the opportunity to work on 2 different missions.<br/><br/>The first was a tablet application used by sales representatives at Roche Diabetes Care. It was a catalog enabling the placement of products and services orders, reserved for healthcare professionals. I contributed to the CCS part of the front end.<br/><br/>The second involved the implementation of a <tooltip id=\'Proof of concept\'>PoC</tooltip> using the EPPlus library. The specifications were:<br/><ul><li>Create a new .Net Core web application,</li><li>Enable the creation of a new blank file or upload an existing file,</li><li>Allow modification of cell values, number of columns etc,</li><li>Ensure the code is generic so it can be used in other applications.</li></ul>',
      name: 'econocomInfos',
      desc: '',
      args: [],
    );
  }

  /// `Web|Alternatif`
  String get webfTitle {
    return Intl.message(
      'Web|Alternatif',
      name: 'webfTitle',
      desc: '',
      args: [],
    );
  }

  /// `June 2017`
  String get webfDates {
    return Intl.message(
      'June 2017',
      name: 'webfDates',
      desc: '',
      args: [],
    );
  }

  /// `PHP Developer: Developed a website using Symfony with Doctrine, MySQL, Twig, and Bootstrap.`
  String get webfInfos {
    return Intl.message(
      'PHP Developer: Developed a website using Symfony with Doctrine, MySQL, Twig, and Bootstrap.',
      name: 'webfInfos',
      desc: '',
      args: [],
    );
  }

  /// `Grenoble Ecole de Management`
  String get gemTitle {
    return Intl.message(
      'Grenoble Ecole de Management',
      name: 'gemTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dec. 2015 (3 weeks internship)`
  String get gemDates {
    return Intl.message(
      'Dec. 2015 (3 weeks internship)',
      name: 'gemDates',
      desc: '',
      args: [],
    );
  }

  /// `HR Assistant / Accounting Assistant / International Affairs Assistant<br/>- Participated in job interviews<br/>- Communicated via email with global partner schools`
  String get gemInfos {
    return Intl.message(
      'HR Assistant / Accounting Assistant / International Affairs Assistant<br/>- Participated in job interviews<br/>- Communicated via email with global partner schools',
      name: 'gemInfos',
      desc: '',
      args: [],
    );
  }

  /// `Air Liquide Advanced Technologies`
  String get alatTitle {
    return Intl.message(
      'Air Liquide Advanced Technologies',
      name: 'alatTitle',
      desc: '',
      args: [],
    );
  }

  /// `July 2015 (1 month seasonal job)`
  String get alatDates {
    return Intl.message(
      'July 2015 (1 month seasonal job)',
      name: 'alatDates',
      desc: '',
      args: [],
    );
  }

  /// `Quality Assistant: Updated standards and guidelines`
  String get alatInfos {
    return Intl.message(
      'Quality Assistant: Updated standards and guidelines',
      name: 'alatInfos',
      desc: '',
      args: [],
    );
  }

  /// `European Radiation Synchrotron Facility`
  String get esrfTitle {
    return Intl.message(
      'European Radiation Synchrotron Facility',
      name: 'esrfTitle',
      desc: '',
      args: [],
    );
  }

  /// `Jan. 2015 & May 2015 (10 weeks internship)`
  String get esrfDates {
    return Intl.message(
      'Jan. 2015 & May 2015 (10 weeks internship)',
      name: 'esrfDates',
      desc: '',
      args: [],
    );
  }

  /// `Sales Assistant / Project Assistant<br/>- Created annual sales dashboards by product<br/>- Formatted and organized the project budget`
  String get esrfInfos {
    return Intl.message(
      'Sales Assistant / Project Assistant<br/>- Created annual sales dashboards by product<br/>- Formatted and organized the project budget',
      name: 'esrfInfos',
      desc: '',
      args: [],
    );
  }

  /// `Roche`
  String get rocheTitle {
    return Intl.message(
      'Roche',
      name: 'rocheTitle',
      desc: '',
      args: [],
    );
  }

  /// `June 2014 (3 weeks internship)`
  String get rocheDates {
    return Intl.message(
      'June 2014 (3 weeks internship)',
      name: 'rocheDates',
      desc: '',
      args: [],
    );
  }

  /// `Sales Assistant: Checked client inventories on SAP`
  String get rocheInfos {
    return Intl.message(
      'Sales Assistant: Checked client inventories on SAP',
      name: 'rocheInfos',
      desc: '',
      args: [],
    );
  }

  /// `Mairie de Fontaine`
  String get mairieTitle {
    return Intl.message(
      'Mairie de Fontaine',
      name: 'mairieTitle',
      desc: '',
      args: [],
    );
  }

  /// `March 2014 (3 weeks internship)`
  String get mairieDates {
    return Intl.message(
      'March 2014 (3 weeks internship)',
      name: 'mairieDates',
      desc: '',
      args: [],
    );
  }

  /// `Civil Registry Assistant`
  String get mairieInfos {
    return Intl.message(
      'Civil Registry Assistant',
      name: 'mairieInfos',
      desc: '',
      args: [],
    );
  }

  /// `EPSI`
  String get epsiTitle {
    return Intl.message(
      'EPSI',
      name: 'epsiTitle',
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

  /// `Bachelor in Software Development and Design`
  String get epsiDevInfo {
    return Intl.message(
      'Bachelor in Software Development and Design',
      name: 'epsiDevInfo',
      desc: '',
      args: [],
    );
  }

  /// `Bachelor in DevOps Development and Integration`
  String get epsiDevOps {
    return Intl.message(
      'Bachelor in DevOps Development and Integration',
      name: 'epsiDevOps',
      desc: '',
      args: [],
    );
  }

  /// `René Pellet Educational Complex`
  String get csrpTitle {
    return Intl.message(
      'René Pellet Educational Complex',
      name: 'csrpTitle',
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

  /// `Vocational Baccalaureate in Management and Administration, European Section (English), with highest honors`
  String get csrpBacPro {
    return Intl.message(
      'Vocational Baccalaureate in Management and Administration, European Section (English), with highest honors',
      name: 'csrpBacPro',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faqTitle {
    return Intl.message(
      'FAQ',
      name: 'faqTitle',
      desc: '',
      args: [],
    );
  }

  /// `<strong>Why do I enjoy developing?</strong><br/>I see development as an art;<br/><indent></indent>The art of investigating bugs and turning them into learning opportunities.<br/><indent></indent>The art of writing clean code, it’s like reading a story.<br/><indent></indent>The art of sharing knowledge with coworkers and friends .<br/><indent></indent>The art of creating, modifying, evolving.`
  String get faqDevArt {
    return Intl.message(
      '<strong>Why do I enjoy developing?</strong><br/>I see development as an art;<br/><indent></indent>The art of investigating bugs and turning them into learning opportunities.<br/><indent></indent>The art of writing clean code, it’s like reading a story.<br/><indent></indent>The art of sharing knowledge with coworkers and friends .<br/><indent></indent>The art of creating, modifying, evolving.',
      name: 'faqDevArt',
      desc: '',
      args: [],
    );
  }

  /// `<strong>How to contact me?</strong><br/>You can contact me via <a href='https://www.linkedin.com/in/elsa-demaine'>Linkedin</a> where I can give you my CV (in English and/or in French)`
  String get faqContact {
    return Intl.message(
      '<strong>How to contact me?</strong><br/>You can contact me via <a href=\'https://www.linkedin.com/in/elsa-demaine\'>Linkedin</a> where I can give you my CV (in English and/or in French)',
      name: 'faqContact',
      desc: '',
      args: [],
    );
  }

  /// `<strong>Am I open to work?</strong><br/>`
  String get faqOpenToWork {
    return Intl.message(
      '<strong>Am I open to work?</strong><br/>',
      name: 'faqOpenToWork',
      desc: '',
      args: [],
    );
  }

  /// `<strong>Is the site's code available?</strong><br/>Yes, you can find it on my <a href='https://github.com/elsa-demaine/portfolio_elsa'>Github</a>. I'm open to advice and feedback (via Merge Request or messaging <a href='https://www.linkedin.com/in/elsa-demaine'>Linkedin</a>)`
  String get faqGit {
    return Intl.message(
      '<strong>Is the site\'s code available?</strong><br/>Yes, you can find it on my <a href=\'https://github.com/elsa-demaine/portfolio_elsa\'>Github</a>. I\'m open to advice and feedback (via Merge Request or messaging <a href=\'https://www.linkedin.com/in/elsa-demaine\'>Linkedin</a>)',
      name: 'faqGit',
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

  /// `Video Games`
  String get videoGames {
    return Intl.message(
      'Video Games',
      name: 'videoGames',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon`
  String get vgText {
    return Intl.message(
      'Coming soon',
      name: 'vgText',
      desc: '',
      args: [],
    );
  }

  /// `Okami is a solo adventure game, taking place in Nippon, which is overrunned by demons. Thanks to the power of different “brush techniques” gathered throughout explorations, we can purify the land. I had the chance to play Okami on Switch, allowing me to draw with the Joy-cons, adding a new dimension to the game.`
  String get okami {
    return Intl.message(
      'Okami is a solo adventure game, taking place in Nippon, which is overrunned by demons. Thanks to the power of different “brush techniques” gathered throughout explorations, we can purify the land. I had the chance to play Okami on Switch, allowing me to draw with the Joy-cons, adding a new dimension to the game.',
      name: 'okami',
      desc: '',
      args: [],
    );
  }

  /// `<div style='color:white;'>Coming soon</div>`
  String get outerWilds {
    return Intl.message(
      '<div style=\'color:white;\'>Coming soon</div>',
      name: 'outerWilds',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon`
  String get monsterHunter {
    return Intl.message(
      'Coming soon',
      name: 'monsterHunter',
      desc: '',
      args: [],
    );
  }

  /// `Series`
  String get series {
    return Intl.message(
      'Series',
      name: 'series',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon`
  String get seriesText {
    return Intl.message(
      'Coming soon',
      name: 'seriesText',
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
