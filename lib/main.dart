import 'package:flutter/material.dart';

// Main function to run the app
void main() {
  runApp(MaterialApp(
    title: 'Navigation Example',
    home: const FirstScreen(),
  ));
}

// First Screen
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the First Screen!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // background
                foregroundColor: Colors.white),
              onPressed: () {
                // Navigate to Second Screen
                },
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

