import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../l10n/messages_all.dart';

class AppLocalization {
  static Future<AppLocalization> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  // list of locales

  // quitApp
  String get quitApp {
    return Intl.message(
      'Quit',
      name: 'quitApp',
      desc: 'Press to quit app',
    );
  }

  // aboutApp
  String get aboutApp {
    return Intl.message(
      'About',
      name: 'aboutApp',
      desc: 'About app ',
    );
  }

  // mySettings
  String get mySettings {
    return Intl.message(
      'Settings',
      name: 'mySettings',
      desc: 'App settings',
    );
  }

  // setDarkmode
  String get setDarkmode {
    return Intl.message(
      'Darkmode',
      name: 'setDarkmode',
      desc: 'Turn darkmode on or off',
    );
  }

  // myLanguage
  String get myLanguage {
    return Intl.message(
      'Language',
      name: 'myLanguage',
      desc: 'Chose app language',
    );
  }
  // appPro

  String get heyWorld {
    return Intl.message(
      'Hey World',
      name: 'heyWorld',
      desc: 'Simpel word for greeting ',
    );
  }

  String get byeWorld {
    return Intl.message(
      'Bey World',
      name: 'byeWorld',
      desc: 'Simpel word for bye ',
    );
  }

  String get middleWorld {
    return Intl.message(
      'Middle World',
      name: 'middleWorld',
      desc: 'Middle word for bye ',
    );
  }

//  'myback',
  String get myBack {
    return Intl.message(
      'Back',
      name: 'myBack',
      desc: 'Middle word for bye ',
    );
  }

//  'myNeck',
  String get myNeck {
    return Intl.message(
      'Neck',
      name: 'myNeck',
      desc: 'Middle word for bye ',
    );
  }

//  '
//  'myAbdomen',
  String get myAbdomen {
    return Intl.message(
      'Abdomen',
      name: 'myAbdomen',
      desc: 'Middle word for bye ',
    );
  }

//  '
//  'myChest',
  String get myChest {
    return Intl.message(
      'Chest',
      name: 'myChest',
      desc: 'Middle word for bye ',
    );
  }

//  '
//  'myButtock',
  String get myButtock {
    return Intl.message(
      'Buttock',
      name: 'myButtock',
      desc: 'Middle word for bye ',
    );
  }

//  '
//  'myLumbar',
  String get myLumbar {
    return Intl.message(
      'Lumbar',
      name: 'myLumbar',
      desc: 'Middle word for bye ',
    );
  }

//  '
//  'myArms',
  String get myArms {
    return Intl.message(
      'Arms',
      name: 'myArms',
      desc: 'Middle word for bye ',
    );
  }

//  '
//  'myLegs',
  String get myLegs {
    return Intl.message(
      'Legs',
      name: 'myLegs',
      desc: 'Middle word for bye ',
    );
  }
//  '
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  final Locale overriddenLocale;

  const AppLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) =>
      ['en', 'de', 'ru'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}
