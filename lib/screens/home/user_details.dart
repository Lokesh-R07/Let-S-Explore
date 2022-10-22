// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letsgo/screens/home/login_screen.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/screens/service_provider/service_home.dart';
import 'package:letsgo/utils/next_screen.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart' as Path;

import '../../provider/sign_in_provider.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  Future getData() async {
    final sp = context.read<SignInProvider>();
    sp.getDataFromSharedPreferences();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  void insertUserDetails() {
    final User? user = auth.currentUser;
    final uid = user?.uid;

    var db = FirebaseFirestore.instance.collection("users");

    db
        .doc(auth.currentUser!.uid)
        .collection("user_details")
        .add({
          'name': name,
          'gender': gender,
          'profile_url': profile_url,
          'location': home_location,
          'dob': dob,
          'phone_no': phone_no,
          'aadhar_no': aadhar_no,
          'user_role': _userRoles,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  final formKey = GlobalKey<FormState>();
  List<String> genderOptions = ['Male', 'Female'];
  List<String> RoleOptions = ['Rider', 'Service Provider'];
  String name = "";
  var gender = "";
  var profile_url = "";
  String home_location = "";
  var dob = "";
  var _userRoles = "";
  var phone_no;
  var aadhar_no;

  void pickUploadImage() async {
    final image = await await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 512,
      maxWidth: 512,
      imageQuality: 75,
    );
    String fileName = Path.basename(image!.path);
    Reference ref = FirebaseStorage.instance.ref().child(fileName);
    await ref.putFile(File(image.path));
    ref.getDownloadURL().then((value) {
      print(value);
      setState(() {
        profile_url = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    final sp = context.watch<SignInProvider>();

    var date = DateTime.now();

    String _email = " ${sp.email}";
    String _uid = " ${sp.uid}";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      //profile picture
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            child: profile_url == " "
                                ? Image.network(
                                    "data:image/jpeg;base64,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")
                                : Image.network(profile_url),
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: IconButton(
                                    icon: const Icon(
                                      FontAwesomeIcons.camera,
                                      size: 20.0,
                                    ),
                                    onPressed: () {
                                      pickUploadImage();
                                    },
                                  )),
                              const Text(
                                "Edit profile pic!",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      //UserName
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                          labelText: "Name",
                          hintText: "Enter your name",
                        ),
                        keyboardType: TextInputType.text,
                        maxLength: 30,
                        validator: (value) {
                          if (value!.isEmpty ||
                              RegExp(r'^[a-z A-Z]$').hasMatch(value)) {
                            return 'Enter valid name';
                          } else {
                            if (value.length < 4) {
                              return 'Enter atleast 4 characters';
                            } else if (value.length > 30) {
                              return 'Enter below 30 characters';
                            } else {
                              return null;
                            }
                          }
                        },
                        onChanged: (value) => setState(() {
                          name = value;
                        }),
                        onSaved: (value) => setState(() => name = value!),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //Email Id
                      TextFormField(
                        initialValue: "${sp.email}",
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.mail),
                            labelText: "Email"),
                        enabled: false,
                        onChanged: (value) => setState(() {
                          _email = "${sp.email}";
                        }),
                        onSaved: (value) =>
                            setState(() => _email = "${sp.email}"),
                      ),
                      Text(
                        "No need to enter your email",
                        style: TextStyle(
                          fontFamily: "Times New Roman",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //Mobile Number
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(FontAwesomeIcons.mobile),
                          labelText: "Mobile Number",
                          hintText: "Enter your mobile no",
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        validator: (value) {
                          if (value!.isEmpty ||
                              RegExp(r'^[0-9]{10}\\$').hasMatch(value)) {
                            return 'Enter valid number';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) => setState(() {
                          phone_no = value;
                        }),
                        onSaved: (value) => setState(() => phone_no = value),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      //Gender
                      FormBuilderDropdown<String>(
                        name: 'gender',
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Gender',
                          prefixIcon: Icon(FontAwesomeIcons.person),
                          hintText: 'Select Gender',
                        ),
                        items: genderOptions
                            .map((gender) => DropdownMenuItem(
                                  alignment: AlignmentDirectional.centerStart,
                                  value: gender,
                                  child: Text(gender),
                                ))
                            .toList(),
                        validator: (value) {
                          // ignore: unnecessary_null_comparison
                          if (value == null) {
                            return 'Please select a gender';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) => setState(() {
                          gender = value!;
                        }),
                        onSaved: (value) => setState(() => gender = gender),
                      ),

                      //Date Of Birth
                      DateTimePicker(
                        // decoration: const InputBorder(
                        //   border :OutlineInputBorder()
                        // ),
                        type: DateTimePickerType.date,
                        dateMask: 'd MMM, yyyy',
                        initialValue:
                            DateTime(date.year - 18, date.month, date.day)
                                .toString(),
                        firstDate:
                            DateTime(date.year - 100, date.month, date.day),
                        lastDate:
                            DateTime(date.year - 18, date.month, date.day),
                        icon: const Icon(Icons.event),
                        dateLabelText: 'Date of birth',
                        onChanged: (value) => setState(() => dob = value),
                        onSaved: (value) => setState(() {
                          dob = value!;
                        }),
                      ),

                      const SizedBox(height: 15),

                      //AADHAR Number
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(FontAwesomeIcons.addressCard),
                          labelText: "AADHAR Number",
                          hintText: "Enter your aadhar no",
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 12,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        validator: (value) {
                          if (value!.isEmpty ||
                              RegExp(r'^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$')
                                  .hasMatch(value)) {
                            return 'Enter valid number';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) => setState(() {
                          aadhar_no = value;
                        }),
                        onSaved: (value) => setState(() => aadhar_no = value),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      //location
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(FontAwesomeIcons.locationPin),
                          labelText: "Home_location",
                          hintText: "Enter your home city",
                        ),
                        keyboardType: TextInputType.text,
                        maxLength: 50,
                        validator: (value) {
                          if (value!.isEmpty ||
                              RegExp(r'^[a-z A-Z]$').hasMatch(value)) {
                            return 'Enter valid location';
                          } else {
                            if (value.length < 4) {
                              return 'Enter atleast 4 characters';
                            } else if (value.length > 50) {
                              return 'Enter below 50 characters';
                            } else {
                              return null;
                            }
                          }
                        },
                        onChanged: (value) => setState(() {
                          home_location = value;
                        }),
                        onSaved: ((value) =>
                            setState(() => home_location = value!)),
                      ),

                      const Text(
                        "Select Your Role",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),

                      // Column(
                      //   children: [
                      //     RadioListTile<UserRoles>(
                      //       contentPadding: const EdgeInsets.all(0.0),
                      //       value: UserRoles.Rider,
                      //       groupValue: _userRoles,
                      //       // shape: RoundedRectangleBorder(
                      //       //   borderRadius: BorderRadius.circular(15),
                      //       // ),
                      //       title: Text(UserRoles.Rider.name),
                      //       tileColor: Colors.deepPurple.shade50,
                      //       onChanged: (value) {
                      //         setState(() {
                      //           _userRoles = value;
                      //         });
                      //       },
                      //     ),
                      //     RadioListTile<UserRoles>(
                      //       contentPadding: const EdgeInsets.all(0.0),
                      //       value: UserRoles.Service_Provider,
                      //       groupValue: _userRoles,
                      //       // dense: true,
                      //       title: Text(UserRoles.Service_Provider.name),
                      //       tileColor: Colors.deepPurple,
                      //       onChanged: (value) {
                      //         setState(() {
                      //           _userRoles = value;
                      //         });
                      //       },
                      //     ),
                      //   ],
                      // ),

                      //UserRoles
                      FormBuilderDropdown<String>(
                        name: 'User Role',
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Role',
                          prefixIcon: Icon(FontAwesomeIcons.person),
                          hintText: 'Select Role',
                        ),
                        items: RoleOptions.map((_userRoles) => DropdownMenuItem(
                              alignment: AlignmentDirectional.centerStart,
                              value: _userRoles,
                              child: Text(_userRoles),
                            )).toList(),
                        validator: (value) {
                          // ignore: unnecessary_null_comparison
                          if (value == null) {
                            return 'Please select a Role';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) => setState(() {
                          _userRoles = value!;
                        }),
                        onSaved: (value) =>
                            setState(() => _userRoles = _userRoles),
                      ),

                      const SizedBox(height: 15),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.black87,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Choose Your Role Wisely.\nOnce choosen can't be undone.\n1)Rider:Able to meet other riders and explore.\n2)Service Proveder:Able to provide services around his/her Area.",
                          style: TextStyle(
                            fontFamily: "Times New Roman",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
                                if (isValid == true) {
                                  insertUserDetails();
                                  if (_userRoles == "Rider") {
                                    nextScreenReplace(
                                        context, const RiderHome());
                                  } else {
                                    nextScreenReplace(
                                        context, const ServiceProviderHome());
                                  }
                                }
                              },
                              child: const Text("Submit",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ))),
                          ElevatedButton(
                              onPressed: () {
                                sp.userSignOut();
                                nextScreenReplace(context, const LoginScreen());
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
}
