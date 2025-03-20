import 'package:flutter/material.dart';
import 'package:nozima/main.dart';
import 'package:nozima/sign_in_page.dart';

class RegisterScreen extends StatefulWidget {
  static String route = "/register";
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retryPasswordController =
      TextEditingController();

  register() {
    String inputPassword = _passwordController.text;
    String inputPasswordOne = _retryPasswordController.text;
    String message = "";
    if (inputPasswordOne == inputPassword) {
      message = "Cannot authorize users, Try again later";
    } else {
      message = 'Enter Password correctly';
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        backgroundColor: Colors.red.shade500,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.all(16),
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: Container(
          color: thirdColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/sign_in.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, -10),
                          blurRadius: 20)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            cursorColor: mainColor,
                            controller: _usernameController,
                            decoration: InputDecoration(
                              label: Text(
                                "Username",
                                style: TextStyle(color: mainColor),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Username';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            cursorColor: mainColor,
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(color: mainColor),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            cursorColor: mainColor,
                            controller: _retryPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(color: mainColor),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {},
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
                                  'Register',
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Do you have an account?',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade500),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(SignInPage.route);
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
