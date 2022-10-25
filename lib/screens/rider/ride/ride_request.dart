import 'package:flutter/material.dart';
import 'package:letsgo/screens/rider/ride_details.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';

class RideRequest extends StatefulWidget {
  const RideRequest({Key? key}) : super(key: key);

  @override
  State<RideRequest> createState() => _RideRequestState();
}

class _RideRequestState extends State<RideRequest> {
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
                    Text(
                      "Active requests",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      child: Card(
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
                              Text("No Active requests",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Times New Roman",
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  )),
                              const SizedBox(
                                height: 30.0,
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Acepted requests",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      child: Card(
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
                              Text("You have not accepted any requests",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Times New Roman",
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  )),
                              const SizedBox(
                                height: 20.0,
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Rejected requests",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      child: Card(
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
                              Text("You have not rejected any requests",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Times New Roman",
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  )),
                              const SizedBox(
                                height: 20.0,
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(height: 30.0),
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
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
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
