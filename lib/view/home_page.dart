// ignore_for_file: use_build_context_synchronously, use_key_in_widget_constructors, must_be_immutable

import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:noviindus_task/service/api_service.dart';
import 'package:noviindus_task/view/list_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordontrtoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/image/spa.jpg",
                        fit: BoxFit.cover,
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: Container(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 150,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/image/Screenshot__66_-removebg-preview.png",
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 30),
              child: Text(
                "Login Or Register To Book",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 2, right: 110),
              child: Text(
                "Your Appointments",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 280),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 154, 153, 153),
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(159, 228, 228, 228)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 208, 208, 208)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(173, 194, 194, 194),
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(207, 240, 236, 236),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250, top: 20),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextFormField(
                controller: passwordontrtoller,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 154, 153, 153),
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(199, 215, 215, 215),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(139, 185, 185, 185),
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(207, 240, 236, 236),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: GestureDetector(
                onTap: () async {
                  final token =
                      await ApiService().loginUser('test_user', '12345678');
                  if (token != null) {
                    log('Login successful. Token: $token');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ListPage(token: token),
                      ),
                    );
                    //eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzk2MTk0MjczLCJpYXQiOjE3MDk3OTQyNzMsImp0aSI6ImIyNjI1YTRmMGM0MDQ4Zjk5NDRjNDAxMmNkMmY1YWY4IiwidXNlcl9pZCI6MjF9.NCISwcpa8Q9oYGgi2ZC8olZiT-zSRDaUIqOgS3VMHyQ
                  } else {
                    log('Login failed.');
                  }
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 20, 86, 48),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Text(
                "By creating or logging into an account you are agreeing ",
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45, right: 20),
              child: Row(
                children: [
                  Text(
                    "with our ",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "Terms and Conditions ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 87, 152),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "and ",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "Privacy policy ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 87, 152),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
