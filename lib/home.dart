import 'package:flutter/material.dart';
import 'package:medical_ui/widgets/banner.dart';
import 'package:medical_ui/widgets/categories.dart';
import 'package:medical_ui/widgets/header.dart';
import 'package:medical_ui/widgets/search_bar.dart';
import 'package:medical_ui/widgets/top_doctors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B3A), // Background color
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: 10,
              ),
              SelfBanner(),
              SizedBox(
                height: 26,
              ),
              SearchBars(),
              SizedBox(
                height: 16,
              ),
              Categories(),
              SizedBox(
                height: 16,
              ),
              TopDoctors()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF1E2949),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
