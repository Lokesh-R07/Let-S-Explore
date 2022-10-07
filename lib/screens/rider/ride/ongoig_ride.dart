import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letsgo/screens/rider/profile_options.dart';
import 'package:letsgo/screens/rider/ride/create_ride.dart';
import 'package:letsgo/screens/rider/ride_details.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';

class OngoingRide extends StatefulWidget {
  const OngoingRide({Key? key}) : super(key: key);

  @override
  State<OngoingRide> createState() => _OngoingRideState();
}

class _OngoingRideState extends State<OngoingRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
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
                child: Column(
                  children: [
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30.0,
                              width: 350.0,
                            ),
                            Text("You're Currently not in an ride",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Times New Roman",
                                  fontSize: 20.0,
                                  color: Colors.greenAccent,
                                )),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text("Planning to create a Ride\n\t\tCreate it!",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Times New Roman",
                                  fontSize: 15.0,
                                  color: Colors.greenAccent,
                                )),
                            ElevatedButton.icon(
                              icon: const Icon(FontAwesomeIcons.motorcycle),
                              label: const Text("   Create New Ride"),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20.0),
                                fixedSize: const Size(300, 70),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                primary:
                                    const Color.fromARGB(255, 179, 185, 181),
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
                              onPressed: () {
                                nextScreenReplace(context, const CreateRide());
                              },
                              //child: Text("Cancel"),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Center(
                              child: ElevatedButton(
                                child: Text(
                                  "Back",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  nextScreenReplace(context, RiderHome());
                                },
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
