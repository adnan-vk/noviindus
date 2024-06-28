// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:noviindus_task/view/home_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key});

  void _navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/image/ayur.jpg",
                  fit: BoxFit.cover,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () => _navigateToHome(context),
              child: Image.asset(
                "assets/image/Screenshot__66_-removebg-preview.png",
                height: 150,
              ),
            ),
          )
        ],
      ),
    );
  }
}
