import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebaseapis/firebaserules/v1.dart';
import 'dart:io';
// import 'package:firebaseapis/firestore/v1.dart';
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

enum UserRoles { Rider, Service_Provider }

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

  UserRoles? _userRoles;

  final formKey = GlobalKey<FormState>();
  List<String> genderOptions = ['Male', 'Female'];
  String name = "";
  String email = "";
  String gender = "";
  String profile_url = "";
  String home_location = "";
  String uid = "sp.uid";
  late String dob;
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
                      //profile picture
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            backgroundImage: NetworkImage("${sp.imageUrl}"),
                            // child: profile_url == " "
                            //     ? Image.network("${sp.imageUrl}")
                            //     : Image.network(profile_url),
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
                        onFieldSubmitted: ((value) =>
                            setState(() => name = value)),
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
                          email = "${sp.email}";
                        }),
                        onFieldSubmitted: ((value) =>
                            setState(() => email = "${sp.email}")),
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
                        onFieldSubmitted: (value) =>
                            setState(() => phone_no = value),
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
                          gender = gender;
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
                        onChanged: (value) => print(value),
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
                        onFieldSubmitted: (value) =>
                            setState(() => aadhar_no = value),
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
                        onFieldSubmitted: ((value) =>
                            setState(() => home_location = value)),
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
                      Column(
                        children: [
                          RadioListTile<UserRoles>(
                            contentPadding: const EdgeInsets.all(0.0),
                            value: UserRoles.Rider,
                            groupValue: _userRoles,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(15),
                            // ),
                            title: Text(UserRoles.Rider.name),
                            tileColor: Colors.deepPurple.shade50,
                            onChanged: (value) {
                              setState(() {
                                _userRoles = value;
                              });
                            },
                          ),
                          RadioListTile<UserRoles>(
                            contentPadding: const EdgeInsets.all(0.0),
                            value: UserRoles.Service_Provider,
                            groupValue: _userRoles,
                            // dense: true,
                            title: Text(UserRoles.Service_Provider.name),
                            tileColor: Colors.deepPurple,
                            onChanged: (value) {
                              setState(() {
                                _userRoles = value;
                              });
                            },
                          ),
                        ],
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
                                if (isValid != null) {
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


// Widget buildSubmit() => ButtonWidget {
//   text : 'Submit',
//   onClick : () => {
//     final isvalid = formkey.currentState.validate(),
//   }
// }
// ElevatedButton(
//                 onPressed: () {
//                   sp.userSignOut();
//                   nextScreenReplace(context, const LoginScreen());
//                 },
//                 child: const Text("SIGNOUT",
//                     style: TextStyle(
//                       color: Colors.white,
//                     )))