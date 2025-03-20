import 'package:flutter/material.dart';
import 'package:nozima/initial_page_two.dart';
import 'package:nozima/main.dart';

class InitalPage extends StatefulWidget {
  const InitalPage({super.key});

  @override
  State<InitalPage> createState() => _InitalPageState();
}

class _InitalPageState extends State<InitalPage> {
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
                  'About Us',
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
                    'assets/images/Recycling.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                "We're here to encourage more frequent and effective recycling.",
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
                    onTap:() =>  Navigator.of(context).pushNamed(InitialPageTwo.route),
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
                        'Next Page',
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
