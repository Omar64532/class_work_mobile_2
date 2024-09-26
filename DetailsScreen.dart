import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String details;

  DetailsScreen({required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Details:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              details,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}