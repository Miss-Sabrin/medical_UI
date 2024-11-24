import 'package:flutter/material.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Doctors',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DoctorCard(
                name: 'Dr. John Rodriguez',
                specialty: 'Surgeon',
                availability: 'Tue, 26 May at 9:30',
              ),
              DoctorCard(
                name: 'Dr. Malik Hess',
                specialty: 'Cardiologist',
                availability: 'Wed, 14 Jul at 12:15',
              ),
              DoctorCard(
                name: 'Dr. Malik Hess',
                specialty: 'Cardiologist',
                availability: 'Wed, 14 Jul at 12:15',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String availability;

  DoctorCard({
    required this.name,
    required this.specialty,
    required this.availability,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.45),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1303206630/photo/portrait-of-smiling-caucasian-businesswoman-pose-in-office.webp?a=1&b=1&s=612x612&w=0&k=20&c=vXQ6jnbUYRi4qn4GzRGJKDBH3PAezENQzM6b5_6FImI='), // Add doctor image
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Center(
            child: Text(
              specialty,
              style: TextStyle(fontSize: 12, color: Colors.grey[400]),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              specialty,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Text(
            availability,
            style: TextStyle(fontSize: 12, color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}
