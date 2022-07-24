import 'dart:io';

import 'package:absensi_app/home_page.dart';
import 'package:absensi_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
class Profile extends StatelessWidget {
   Profile(this.username, { Key? key, required this.imagePath}) : super(key: key);
  final String username;
  final String imagePath;
  String githubUrl = "https://github.com/Eko748";

  void _launchURL()async=>
      await canLaunch(githubUrl)?await
          launch(githubUrl)
          :throw 'could not launch $githubUrl';
  @override
  Widget build(BuildContext context) {
    final double mirror = math.pi;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(imagePath)),
                      ),
                    ),
                    margin: const EdgeInsets.all(20),
                    width: 50,
                    height: 50,
                    // child: Transform(
                    //     alignment: Alignment.center,
                    //     child: FittedBox(
                    //       fit: BoxFit.cover,
                    //       child: Image.file(File(imagePath)),
                    //     ),
                    //     transform: Matrix4.rotationY(mirror)),
                  ),
                  Text(
                    'Hi ' + username + '!',
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: const [
                    Icon(
                      Icons.warning_amber_outlined,
                      size: 30,
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     Text(
                      '''Terima kasih hadir tepat waktu''',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                     Divider(
                      height: 30,
                    ),

                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                text: "LOG OUT",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                color: Color.fromARGB(237, 234, 20, 4)
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
