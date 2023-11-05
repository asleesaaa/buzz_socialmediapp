import 'dart:developer';
import 'package:buzz2/feed.dart';

import 'package:buzz2/signup.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50.0, top: 45, bottom: 0),
                    //padding: const EdgeInsets.,
                    child: Center(
                        child: Text(
                      'Buzz',
                      style: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.w500)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60.0,
                    ),
                    child: Container(
                        width: 180,
                        height: 120,
                        child: Lottie.asset("assets/bee.json")),
                  ),
                ],
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 7, 13), fontSize: 13),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 201, 43),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    final email = emailController.text;
                    final password = passwordController.text;
                    log('My email  is : $email and pssword is: $password');

                    validateUser(email: email, password: password);

                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Feed()));
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SignUp()));
                    },
                    child: const Text('New User ? Create an Account')),
              ),
            ],
          ),
        ));
  }

  Future<void> validateUser({required String email, required password}) async {
    log('start');
    if (!(email == 'as' && password == 'as')) return;
    log('done');
  }
}
