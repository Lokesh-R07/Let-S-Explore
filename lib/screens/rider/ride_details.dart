//new ride,ride history,upcoming rides,search rides
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letsgo/screens/rider/ride/create_ride.dart';
import 'package:letsgo/screens/rider/ride/ongoig_ride.dart';
import 'package:letsgo/screens/rider/ride/ride_history.dart';
import 'package:letsgo/screens/rider/ride/search_rides.dart';
import 'package:letsgo/screens/rider/ride/upcoming_rides.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';

class RideDetails extends StatefulWidget {
  const RideDetails({Key? key}) : super(key: key);

  @override
  State<RideDetails> createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      icon: const Icon(FontAwesomeIcons.motorcycle),
                      label: const Text("   Create New Ride"),
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
                      onPressed: () {
                        nextScreen(context, const CreateRide());
                      },
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.upcoming),
                      label: const Text("  Upcoming Rides"),
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
                      onPressed: () {
                        nextScreenReplace(context, const UpcomingRide());
                      },
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.today),
                      label: const Text("  Ongoing Ride"),
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
                      onPressed: () {
                        nextScreenReplace(context, const OngoingRide());
                      },
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.history),
                      label: const Text("  Ride History"),
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
                      onPressed: () {
                        nextScreen(context, const RideHistory());
                      },
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.search_rounded),
                      label: const Text("  Search Rides"),
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
                      onPressed: () {
                        nextScreenReplace(context, const SearchRides());
                      },
                      //child: Text("Cancel"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      child: Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        nextScreenReplace(context, RiderHome());
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.all(10.0),
                    //   child: Text(
                    //     "  You can create your ride here!",
                    //     style: TextStyle(fontSize: 20, color: Colors.black87),
                    //   ),
                    // ),
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
