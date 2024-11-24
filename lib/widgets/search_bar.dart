import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'how i can help you',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
          )),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
