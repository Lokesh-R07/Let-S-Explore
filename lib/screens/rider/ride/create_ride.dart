// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
import 'package:provider/provider.dart';

import '../../../provider/sign_in_provider.dart';

class CreateRide extends StatefulWidget {
  const CreateRide({Key? key}) : super(key: key);

  @override
  State<CreateRide> createState() => _CreateRideState();
}

class _CreateRideState extends State<CreateRide> {
  Future getData() async {
    final sp = context.read<SignInProvider>();
    sp.getDataFromSharedPreferences();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  void insertRideDetails() {
    final User? user = auth.currentUser;
    final uid = user?.uid;

    var db = FirebaseFirestore.instance.collection("users");

    db
        .doc(auth.currentUser!.uid)
        .collection("ride_details")
        .doc()
        .collection("rides")
        .add({
          'start_city': start_city,
          'destination': destination,
          'starting_point': starting_point,
          'start_date': start_date,
          'start_time': start_time,
        })
        .then((value) => print("Ride Added"))
        .catchError((error) => print("Failed to add ride: $error"));
  }

  final formKey = GlobalKey<FormBuilderState>();
  String start_city = "";
  String destination = "";
  String starting_point = "";
  String profile_url = "";
  String uid = "sp.uid";
  var start_date = "";
  var start_time = "";

  final format = DateFormat("HH:mm");
  // final _format = DateFormat("dd-MM-yyyy");

  @override
  void initState() {
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    var date = DateTime.now();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            color: Colors.white,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child:
                        Image.asset('asset/user_form.jpg', fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Create a new ride",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(FontAwesomeIcons.locationPin),
                          labelText: "Starting location",
                          hintText: "Enter the starting city",
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return null;
                        },
                        onChanged: (value) => setState(() {
                          start_city = value;
                        }),
                        onFieldSubmitted: ((value) =>
                            setState(() => start_city = value)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //UserName
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.local_airport),
                          labelText: "Destination",
                          hintText: "Enter your destination",
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return null;
                        },
                        onChanged: (value) => setState(() {
                          destination = value;
                        }),
                        onFieldSubmitted: ((value) =>
                            setState(() => destination = value)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //Mobile Number
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(FontAwesomeIcons.locationPinLock),
                          labelText: "Ride Pickup location",
                          hintText: "Enter your starting point",
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return null;
                        },
                        onChanged: (value) => setState(() {
                          starting_point = value;
                        }),
                        onFieldSubmitted: (value) =>
                            setState(() => starting_point = value),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // DateTimeField(
                      //   format: _format,
                      //   decoration: InputDecoration(
                      //       labelText: "Select Ride Date",
                      //       icon: Icon(Icons.calendar_month)),
                      //   initialValue: DateTime.now(),
                      //   onShowPicker: (context, currentValue) {
                      //     return showDatePicker(
                      //         context: context,
                      //         firstDate: DateTime.now(),
                      //         initialDate: currentValue ?? DateTime.now(),
                      //         lastDate:
                      //             DateTime.now().add(new Duration(days: 30)));
                      //   },
                      //   onSaved: ((currentValue) => setState(() {
                      //         start_date = currentValue! as String;
                      //       })),
                      // ),

                      DateTimePicker(
                        type: DateTimePickerType.date,
                        dateMask: 'd MMM, yyyy',
                        initialValue: DateTime(date.year, date.month, date.day)
                            .toString(),
                        firstDate: DateTime(date.year, date.month, date.day),
                        lastDate:
                            DateTime(date.year, date.month, date.day + 30),
                        icon: const Icon(Icons.event),
                        dateLabelText: 'Date of birth',
                        onChanged: (value) =>
                            setState(() => start_date = value),
                        onSaved: (value) => setState(() {
                          start_date = value!;
                        }),
                      ),

                      const SizedBox(height: 15),
                      DateTimeField(
                        decoration: InputDecoration(
                            labelText: "Select starting time",
                            icon: Icon(Icons.timer)),
                        initialValue: DateTime.now(),
                        format: format,
                        onShowPicker: (context, currentValue) async {
                          final time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(
                                currentValue ?? DateTime.now()),
                          );
                          return DateTimeField.convert(time);
                        },
                        onSaved: ((currentValue) => setState(() {
                              start_time = currentValue! as String;
                            })),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(
                                  left: 0.0, right: 0.0, top: 0.0)),
                          ElevatedButton(
                              onPressed: () {
                                final isValid =
                                    formKey.currentState?.validate();
                                print(isValid);
                                if (isValid == null) {
                                  insertRideDetails();
                                  nextScreenReplace(context, const RiderHome());
                                }
                              },
                              child: const Text("Submit",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ))),
                          ElevatedButton(
                              onPressed: () {
                                nextScreenReplace(context, RiderHome());
                              },
                              child: const Text("Cancel",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ))),
                          const Padding(
                              padding: EdgeInsets.only(
                                  left: 0.0, right: 0.0, top: 0.0)),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> openTimePicker() async {
  //   await showTimePicker(
  //           context: context,
  //           initialTime: TimeOfDay.now(),
  //           helpText: "Choose Time")
  //       .then((value) {
  //     DateTime newDate = DateTime(
  //         selectedDate.year,
  //         selectedDate.month,
  //         selectedDate.day,
  //         value != null ? value.hour : selectedDate.hour,
  //         value != null ? value.minute : selectedDate.minute);
  //     setState(() => selectedDate = newDate);
  //   });
}
