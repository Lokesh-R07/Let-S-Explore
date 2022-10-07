import 'dart:async';

import 'package:flutter/material.dart';
import 'package:letsgo/provider/sign_in_provider.dart';
import 'package:letsgo/screens/home/login_screen.dart';
import 'package:letsgo/screens/home/user_details.dart';
import 'package:letsgo/utils/next_screen.dart';
import 'package:provider/provider.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // init state
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    super.initState();
    // create a timer of 2 seconds
    Timer(const Duration(seconds: 5), () {
      sp.isSignedIn == false
          ? nextScreen(context, const LoginScreen())
          : nextScreen(context, const UserDetails());
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
