import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nozima/deposit_screen.dart';
import 'package:nozima/main.dart';

final List emojis = ['😍️️️️️️', '❤️', '🌷'];

class MainHomeScreen extends StatelessWidget {
  static String route = "/home";
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        color: Colors.transparent,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                height: 350,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green.shade900,
                          offset: Offset(0, 10),
                          blurRadius: 40)
                    ]),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    offset: Offset(0, 5),
                                    blurRadius: 10)
                              ]),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Hi, Nozima ${emojis.elementAt(Random().nextInt(3))}',
                          style: TextStyle(color: mainColor, fontSize: 25),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Your Balance',
                      style: TextStyle(
                          color: thirdColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '21 090,48 soums',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: mainColor)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(DepositScreen.route);
                            },
                            icon: Icon(Icons.payment)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Monitoring',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          offset: Offset(0, 4),
                          blurRadius: 10)
                    ]),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Column(
                  children: history.map((value) {
                    String formattedTime =
                        DateFormat('dd MMMM, yyyy HH:mm').format(value['time']);
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: secondaryColor)),
                                child: Icon(
                                  value['icon'],
                                  color: mainColor,
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      value['type'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(formattedTime)
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                width: 120,
                                child: Text(
                                  value['amount'] + ' soums',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey.shade300,
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Payments',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 4; i++) ...{
                        Container(
                          height: 120,
                          width: 120,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                    'assets/images/Recycling.png',
                                    fit: BoxFit.cover),
                              ),
                              ClipRRect(
                                // Clip it cleanly.
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Soon ...',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      }
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List history = [
  {
    'icon': Icons.liquor,
    'type': 'Bottle',
    'amount': '401,5',
    'time': DateTime(2025, 3, 20, 10, 0, 0)
  },
  {
    'icon': Icons.agriculture,
    'type': 'Soil',
    'amount': '1200,09',
    'time': DateTime(2025, 3, 20, 10, 0, 0)
  },
  {
    'icon': Icons.liquor,
    'type': 'Can',
    'amount': '750,0',
    'time': DateTime(2025, 3, 20, 10, 0, 0),
  },
  {
    'icon': Icons.recycling_rounded,
    'type': 'recyclable',
    'amount': '340,5',
    'time': DateTime(2025, 3, 20, 10, 0, 0)
  },
];
