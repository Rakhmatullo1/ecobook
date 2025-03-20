import 'package:flutter/material.dart';
import 'package:nozima/main.dart';
import 'package:nozima/sign_in_page.dart';

class InitialPageTwo extends StatelessWidget {
  static String route = 'initial-page';
  const InitialPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Our Mission',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: secondaryColor),
                  ),
                  Image.asset(
                    'assets/images/our_mission.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                "Our mission is to build a nation where recycling is the norm and, help make a better world for future generations.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    onTap: () => Navigator.of(context).pushNamed(SignInPage.route),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(0, 10),
                                blurRadius: 20)
                          ],
                          border: Border.all(
                            color: mainColor,
                            width: 2,
                          ),
                          color: Colors.white),
                      child: Text(
                        'Go to sign in',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
