import 'package:flutter/material.dart';
import 'package:nozima/add_card.dart';
import 'package:nozima/deposit_screen.dart';
import 'package:nozima/home.dart';
import 'package:nozima/initial_page_one.dart';
import 'package:nozima/initial_page_two.dart';
import 'package:nozima/register.dart';
import 'package:nozima/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

Color mainColor = Color.fromRGBO(77, 121, 2, 1);
Color secondaryColor = Color.fromRGBO(119, 221, 102, 1);
Color thirdColor = Color.fromRGBO(126, 147, 123, 1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        InitialPageTwo.route: (_) => InitialPageTwo(),
        SignInPage.route: (_) => SignInPage(),
        RegisterScreen.route: (_) => RegisterScreen(),
        HomeScreen.route: (_) => HomeScreen(),
        DepositScreen.route: (_) => DepositScreen(),
        AddCardScreen.route: (_) => AddCardScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
          useMaterial3: true,
          fontFamily: 'Montserrat'),
      home: InitalPage(),
    );
  }
}
