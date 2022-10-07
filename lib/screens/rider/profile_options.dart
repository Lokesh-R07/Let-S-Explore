// edit profile,edit bike details,log out
import 'package:flutter/material.dart';
import 'package:letsgo/provider/sign_in_provider.dart';
import 'package:letsgo/screens/home/login_screen.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';
import 'package:provider/provider.dart';

class ProfileOptions extends StatefulWidget {
  const ProfileOptions({Key? key}) : super(key: key);

  @override
  State<ProfileOptions> createState() => _ProfileOptionsState();
}

class _ProfileOptionsState extends State<ProfileOptions> {
  Future getData() async {
    final sp = context.read<SignInProvider>();
    sp.getDataFromSharedPreferences();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final sp = context.watch<SignInProvider>();
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset('asset/rider_background.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 60, bottom: 30),
                child: Container(
                    // elevation: 14.0,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 30.0,
                      width: 350.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.edit_outlined),
                      label: const Text("   Edit Profile"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20.0),
                        fixedSize: const Size(300, 70),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        primary: const Color.fromARGB(255, 179, 185, 181),
                        onPrimary: Colors.black87,
                        elevation: 15,
                        shadowColor: Colors.blueAccent,
                        side: const BorderSide(
                          color: Colors.black87,
                          width: 2,
                        ),
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.edit_rounded),
                      label: const Text("  Edit Vehicle Details"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20.0),
                        fixedSize: const Size(300, 70),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        primary: const Color.fromARGB(255, 179, 185, 181),
                        onPrimary: Colors.black87,
                        elevation: 15,
                        shadowColor: Colors.blueAccent,
                        side: const BorderSide(
                          color: Colors.black87,
                          width: 2,
                        ),
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            fixedSize: const Size(100, 50),
                            textStyle: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                            elevation: 15,
                            shadowColor: Colors.blueAccent,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            "Back",
                          ),
                          onPressed: () {
                            nextScreenReplace(context, RiderHome());
                          },
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.logout),
                          label: const Text("  Log Out"),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            fixedSize: const Size(100, 50),
                            textStyle: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                            elevation: 15,
                            shadowColor: Colors.blueAccent,
                            alignment: Alignment.centerLeft,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            sp.userSignOut();
                            nextScreenReplace(context, const LoginScreen());
                          },
                          //child: Text("Cancel"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
