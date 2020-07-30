import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mortalityday/content/i18n.dart';

void main() {
  test('i18n should have correct supported languages', () {
    final i18nDelegate = I18nDelegate();

    // Sample supported Locales
    expect(i18nDelegate.isSupported(Locale('en', '')), true);
    expect(i18nDelegate.isSupported(Locale('en', 'US')), true);
    expect(i18nDelegate.isSupported(Locale('en', 'NZ')), true);
    expect(i18nDelegate.isSupported(Locale('de', '')), true);
    expect(i18nDelegate.isSupported(Locale('de', 'DE')), true);
    expect(i18nDelegate.isSupported(Locale('de', 'CH')), true);

    // Sample not supported Locales
    expect(i18nDelegate.isSupported(Locale('es', '')), false);
    expect(i18nDelegate.isSupported(Locale('fr', '')), false);
    expect(i18nDelegate.isSupported(Locale('mi', '')), false);
  });

  test('i18n delivers correct english title', () {
    var localeMock = LocaleMock();
    when(localeMock.languageCode).thenReturn("en");

    final i18n = I18n(localeMock);

    expect(i18n.title, "Mortality Day");
  });

  test('i18n delivers correct german title', () {
    var localeMock = LocaleMock();
    when(localeMock.languageCode).thenReturn("de");

    final i18n = I18n(localeMock);

    expect(i18n.title, "Tag der Sterblichkeit");
  });
}

class LocaleMock extends Mock implements Locale {}