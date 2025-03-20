import 'package:flutter/material.dart';
import 'package:nozima/home.dart';
import 'package:nozima/main.dart';
import 'package:nozima/register.dart';

class SignInPage extends StatefulWidget {
  static String route = "/sign-in";
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final String username = 'Ru2110221';

  final String password = 'U2410212';

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  sign() {
    String inputUsername = _usernameController.text;
    String inputPassword = _passwordController.text;
    if (inputUsername == username && inputPassword == password) {
      Navigator.of(context).pushNamed(HomeScreen.route);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Username or password is wrong',
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
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
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
                            'Sign In',
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
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: sign,
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
                                  'Sign In',
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
                                'Do you have not an account?',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade500),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(RegisterScreen.route);
                                },
                                child: Text(
                                  'Register',
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
