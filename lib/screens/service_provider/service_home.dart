// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letsgo/screens/rider/profile_options.dart';
import 'package:letsgo/screens/rider/ride_details.dart';
import 'package:letsgo/utils/next_screen.dart';

class ServiceProviderHome extends StatefulWidget {
  const ServiceProviderHome({Key? key}) : super(key: key);

  @override
  State<ServiceProviderHome> createState() => _ServiceProviderHomeState();
}

class _ServiceProviderHomeState extends State<ServiceProviderHome> {
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
                            const SizedBox(
                              height: 30.0,
                            ),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.add_reaction),
                              label: const Text("  Requests"),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20.0),
                                fixedSize: const Size(300, 70),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
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
                              onPressed: () {},
                              //child: Text("Cancel"),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.edit),
                              label: const Text("  Profile Settings"),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20.0),
                                fixedSize: const Size(300, 70),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
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
                                nextScreenReplace(
                                    context, const ProfileOptions());
                              },
                              //child: Text("Cancel"),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text("heading"),
                              subtitle: Text("subheading"),
                              trailing: Icon(Icons.favorite_outline),
                            ),
                            Container(
                              height: 100.0,
                              child: Image.asset('asset/rider_background.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.centerLeft,
                              child: Text("supportingText"),
                            ),
                            ButtonBar(
                              children: [
                                TextButton(
                                  child: const Text('View Full Details'),
                                  onPressed: () {/* ... */},
                                ),
                                TextButton(
                                  child: const Text('Contact'),
                                  onPressed: () {/* ... */},
                                )
                              ],
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
