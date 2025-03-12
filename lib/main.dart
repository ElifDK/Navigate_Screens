import 'package:flutter/material.dart';

// Main function to run the app
void main() {
  runApp(MaterialApp(
    title: 'Navigation Example',
    initialRoute: '/second',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen()
    }
    ,
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
                //Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => SecondScreen()));
                Navigator.pushNamed(context, '/second');
                },
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// Second Screen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the Second Screen!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // background
                  foregroundColor: Colors.white),
              onPressed: () {
                // Navigate back to First Screen
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // background
                  foregroundColor: Colors.white),
              onPressed: () {
                // Navigate  to Third Screen
                //Navigator.push(context, MaterialPageRoute(builder:(context)=>ThirdScreen()));
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// Third Screen
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the Third Screen!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background
                  foregroundColor: Colors.white),
              onPressed: () {
                // Navigate back to Second Screen
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background
                  foregroundColor: Colors.white),
              onPressed: () {
                // Navigate back to First Screen and remove all previous routes
                //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                //    builder: (context) => const FirstScreen()),(route) => false,);
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: const Text('Go to First Screen (Reset Stack)'),
            ),
          ],
        ),
      ),
    );
  }
}


