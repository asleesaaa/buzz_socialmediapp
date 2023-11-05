import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpDemoState createState() => _SignUpDemoState();
}

class _SignUpDemoState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final susernameController = TextEditingController();
    final semailController = TextEditingController();
    final spasswordController = TextEditingController();
    final sconfirmController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          height: MediaQuery.of(context).size.height - 10,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(255, 11, 0, 0),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Center(
                  child: Container(
                      width: 120,
                      height: 120,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/

                      child: Lottie.asset("assets/bee.json")),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: susernameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          hintText: 'Enter a valid username'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: semailController,
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
                      controller: spasswordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter secure password'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: sconfirmController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          hintText: 'Enter your password again'),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 200,
                padding: const EdgeInsets.only(top: 3, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    final susername = susernameController.text;
                    final semail = semailController.text;
                    final spassword = spasswordController.text;
                    final sconfirm = sconfirmController.text;

                    log('My signup email  is : $semail and signup psssword is: $spassword');

                    createUser(
                        semail: semail,
                        spassword: spassword,
                        susername: susername,
                        sconfirm: sconfirm);
                  },
                  color: const Color.fromARGB(255, 236, 201, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color.fromARGB(255, 12, 0, 0),
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  Text(
                    " Log In",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> createUser(
      {required String susername,
      required String semail,
      required spassword,
      required sconfirm}) async {
    log('start');

    if (spassword != sconfirm) {
      return;
    }

    final json = {
      'email': semail,
      'password': spassword,
      'username': susername
    };
    final docUsers = FirebaseFirestore.instance.collection('users').doc(semail);
    docUsers.set(json);
    log('done');
  }
}
