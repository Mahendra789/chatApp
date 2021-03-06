import 'package:flutter/material.dart';

import './screens/welcome.dart';
import './screens/messages.dart';
import './screens/groups.dart';
import './screens/contacts.dart';
import './screens/profile.dart';
import './screens/conversation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const MaterialColor PrimaryColor = const MaterialColor(
    0xFF363636,
    const <int, Color>{
      50: const Color(0xFF363636),
      100: const Color(0xFF363636),
      200: const Color(0xFF363636),
      300: const Color(0xFF363636),
      400: const Color(0xFF363636),
      500: const Color(0xFF363636),
      600: const Color(0xFF363636),
      700: const Color(0xFF363636),
      800: const Color(0xFF363636),
      900: const Color(0xFF363636),
    },
  );

  static const MaterialColor PrimaryBackGround = const MaterialColor(
    0xFFDF193E,
    const <int, Color>{
      50: const Color(0xFFDF193E),
      100: const Color(0xFFDF193E),
      200: const Color(0xFFDF193E),
      300: const Color(0xFFDF193E),
      400: const Color(0xFFDF193E),
      500: const Color(0xFFDF193E),
      600: const Color(0xFFDF193E),
      700: const Color(0xFFDF193E),
      800: const Color(0xFFDF193E),
      900: const Color(0xFFDF193E),
    },
  );

  static const MaterialColor PrimaryLight = const MaterialColor(
    0xFFB9B9B9,
    const <int, Color>{
      50: const Color(0xFFB9B9B9),
      100: const Color(0xFFB9B9B9),
      200: const Color(0xFFB9B9B9),
      300: const Color(0xFFB9B9B9),
      400: const Color(0xFFB9B9B9),
      500: const Color(0xFFB9B9B9),
      600: const Color(0xFFB9B9B9),
      700: const Color(0xFFB9B9B9),
      800: const Color(0xFFB9B9B9),
      900: const Color(0xFFB9B9B9),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: PrimaryColor,
        backgroundColor: PrimaryBackGround,
        primaryColor: PrimaryColor,
        primaryColorLight: PrimaryLight,
        fontFamily: 'lato',
      ),
      routes: {
        Messages.routeName: (ctx) => Messages(),
        Groups.routeName: (ctx) => Groups(),
        Contacts.routeName: (ctx) => Contacts(),
        Profile.routeName: (ctx) => Profile(),
        Conversation.routeName: (ctx) => Conversation(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => Welcome());
      },
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Welcome(),
      ),
    );
  }
}
