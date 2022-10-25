// ignore_for_file: unused_import

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/provider/sign_in_provider.dart';
import 'package:letsgo/screens/home/login_screen.dart';
import 'package:letsgo/screens/home/user_details.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';
import 'package:provider/provider.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//   final FirebaseAuth auth = FirebaseAuth.instance;

//   var db = FirebaseFirestore.instance.collection("users");

//   Future<bool> checkIfCollectionExist(String user_details, String uid) async {
//     final User? user = auth.currentUser;
//     final uid = user?.uid;

//   var value = await db
//       .doc(uid)
//       .collection(user_details)
//       .limit(1)
//       .get();
//   return value.docs.isNotEmpty;
// }
  // init state
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    // var ud=context.read<checkIfCollectionExist()>;
    super.initState();
    // create a timer of 2 seconds
    Timer(const Duration(seconds: 5), () {
      sp.isSignedIn == false
          ? nextScreen(context, const LoginScreen())
          : nextScreen(context, const RiderHome());
      //       Timer(const Duration(seconds: 5), () {
      //   ud=false
      //       ? nextScreen(context, const LoginScreen())
      //       : nextScreen(context, const UserDetails());
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset('asset/splash_background.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 300.0)),
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/letsgo_logo.png'),
                    radius: 50,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "...",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
