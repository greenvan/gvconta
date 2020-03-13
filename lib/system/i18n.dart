import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps

//WARNING: This file is automatically generated. DO NOT EDIT, all your changes would be lost.

typedef LocaleChangeCallback = void Function(Locale locale);

class I18n implements WidgetsLocalizations {
  const I18n();
  static Locale _locale;
  static bool _shouldReload = false;

  static set locale(Locale newLocale) {
    _shouldReload = true;
    I18n._locale = newLocale;
  }

  static const GeneratedLocalizationsDelegate delegate = GeneratedLocalizationsDelegate();

  /// function to be invoked when changing the language
  static LocaleChangeCallback onLocaleChanged;

  static I18n of(BuildContext context) =>
    Localizations.of<I18n>(context, WidgetsLocalizations);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  /// "GV Conta"
  String get appName => "GV Conta";
  /// "Login Page"
  String get loginAppBar => "Login Page";
  /// "Name"
  String get name => "Name";
  /// "Email"
  String get email => "Email";
  /// "Password"
  String get password => "Password";
  /// "Retype Password"
  String get repeatPassword => "Retype Password";
  /// "Login"
  String get login => "Login";
  /// "Create an account"
  String get createAccount => "Create an account";
  /// "Have an account? Log in"
  String get alreadyAnAccount => "Have an account? Log in";
  /// "Passwords do not match"
  String get passNoMatch => "Passwords do not match";
  /// "This field can't be empty"
  String get noEmpty => "This field can't be empty";
  /// "Introduzca un e-mail válido"
  String get enterValidEmail => "Introduzca un e-mail válido";
  /// "La contraseña debe tener como mínimo 8 caracteres"
  String get enterValidPass => "La contraseña debe tener como mínimo 8 caracteres";
  /// "Hello ${name}"
  String greetTo(String name) => "Hello ${name}";
}

class _I18n_en_US extends I18n {
  const _I18n_en_US();

  @override
  TextDirection get textDirection => TextDirection.ltr;
}

class _I18n_es_ES extends I18n {
  const _I18n_es_ES();

  /// "Tala cuentas"
  @override
  String get appName => "Tala cuentas";
  /// "Inicie sesión"
  @override
  String get loginAppBar => "Inicie sesión";
  /// "Nombre"
  @override
  String get name => "Nombre";
  /// "Email"
  @override
  String get email => "Email";
  /// "Contraseña"
  @override
  String get password => "Contraseña";
  /// "Repita la contraseña"
  @override
  String get repeatPassword => "Repita la contraseña";
  /// "Iniciar sesión"
  @override
  String get login => "Iniciar sesión";
  /// "Crear una nueva cuenta"
  @override
  String get createAccount => "Crear una nueva cuenta";
  /// "¿Ya tienes una cuenta? Inicia sesión aquí"
  @override
  String get alreadyAnAccount => "¿Ya tienes una cuenta? Inicia sesión aquí";
  /// "Las contraseñas no coinciden"
  @override
  String get passNoMatch => "Las contraseñas no coinciden";
  /// "No puede dejar este campo en blanco"
  @override
  String get noEmpty => "No puede dejar este campo en blanco";
  /// "Introduzca un e-mail válido"
  @override
  String get enterValidEmail => "Introduzca un e-mail válido";
  /// "La contraseña debe tener como mínimo 8 caracteres"
  @override
  String get enterValidPass => "La contraseña debe tener como mínimo 8 caracteres";
  /// "Hola ${name}"
  @override
  String greetTo(String name) => "Hola ${name}";

  @override
  TextDirection get textDirection => TextDirection.ltr;
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const GeneratedLocalizationsDelegate();
  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", "US"),
      Locale("es", "ES")
    ];
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      if (isSupported(locale)) {
        return locale;
      }
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    };
  }

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    I18n._locale ??= locale;
    I18n._shouldReload = false;
    final String lang = I18n._locale != null ? I18n._locale.toString() : "";
    final String languageCode = I18n._locale != null ? I18n._locale.languageCode : "";
    if ("en_US" == lang) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_en_US());
    }
    else if ("es_ES" == lang) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_es_ES());
    }
    else if ("en" == languageCode) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_en_US());
    }
    else if ("es" == languageCode) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_es_ES());
    }

    return SynchronousFuture<WidgetsLocalizations>(const I18n());
  }

  @override
  bool isSupported(Locale locale) {
    for (var i = 0; i < supportedLocales.length && locale != null; i++) {
      final l = supportedLocales[i];
      if (l.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => I18n._shouldReload;
}