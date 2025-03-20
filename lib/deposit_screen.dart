import 'package:flutter/material.dart';
import 'package:nozima/add_card.dart';
import 'package:nozima/main.dart';

class DepositScreen extends StatelessWidget {
  static String route = "/deposit";
  const DepositScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
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
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AddCardScreen.route);
                    },
                    child: Container(
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
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Stack(
                children: [
                  Image.network(
                      'https://s3.smartbank.uz/promo-images/app-icons/4'),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        '5614 68** **** **07',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, -2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 50),
                      child: Text(
                        '01 / 30',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, -2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 80),
                      child: Text(
                        'Nozima R.',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 80),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'This feature will be added soon ...',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      backgroundColor: Colors.green.shade500,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: EdgeInsets.all(16),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
                    'Deposit',
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
