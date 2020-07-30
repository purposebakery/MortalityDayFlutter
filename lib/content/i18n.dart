import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

const String DE = 'de';
const String EN = 'en';

class I18n {
  I18n(this.locale);

  final Locale locale;

  static I18n of(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  // Keys
  static const String TITLE = 'TITLE';
  static const String NO_DATA_QUOTE_TEXT = 'NO_DATA_QUOTE_TEXT';
  static const String NO_DATA_QUOTE_AUTHOR = 'NO_DATA_QUOTE_AUTHOR';
  static const String SHARE = 'SHARE';
  static const String SEND = 'SEND';

  // Value Map
  static Map<String, Map<String, String>> values = {
    EN: {
      TITLE: 'Mortality Day',
      NO_DATA_QUOTE_TEXT: 'Sorry... I\'m without internet.',
      NO_DATA_QUOTE_AUTHOR: 'This program',
      SHARE: 'Share',
      SEND: 'Send',
    },
    DE: {
      TITLE: 'Tag der Sterblichkeit',
      NO_DATA_QUOTE_TEXT: 'Entschuldigung... Bin gerade ohne Internet.',
      NO_DATA_QUOTE_AUTHOR: 'Das Programm',
      SHARE: 'Teilen',
      SEND: 'Senden',
    },
  };

  // Getter
  String get title {
    return values[locale.languageCode][TITLE];
  }
  String get noDataQuoteText {
    return values[locale.languageCode][NO_DATA_QUOTE_TEXT];
  }
  String get noDataQuoteAuthor {
    return values[locale.languageCode][NO_DATA_QUOTE_TEXT];
  }
  String get share {
    return values[locale.languageCode][SHARE];
  }
  String get send {
    return values[locale.languageCode][SEND];
  }
}

// Supported Languages
final Iterable<Locale> supportedLocales = [
  const Locale(EN, ''), // English, no country code
  const Locale(DE, ''), // German, no country code
];

final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = [
  const I18nDelegate(),
  GlobalCupertinoLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
];

class I18nDelegate extends LocalizationsDelegate<I18n> {
  const I18nDelegate();

  @override
  bool isSupported(Locale locale) => [EN, DE].contains(locale.languageCode);

  @override
  Future<I18n> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of I18n.
    return SynchronousFuture<I18n>(I18n(locale));
  }

  @override
  bool shouldReload(I18nDelegate old) => false;
}

