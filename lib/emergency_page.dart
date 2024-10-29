import 'package:blsandfirstaid/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmergencyPage(),
    );
  }
}

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 150, 135),
        toolbarHeight: 100.0,  // Set custom height for the app bar
        leading: Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
            },
            child: Transform.scale(
              scale: 1.8,
              child: Image.asset(
                'asset/JDRlogo.png', // Update with correct path to your logo
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        title: const Text(''),  // Leave title empty if not needed
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            iconSize: 40,  // Adjust size as needed for the exit icon
            onPressed: () {
             Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
            },
            tooltip: 'Exit',
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.teal,
              Colors.white,
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'May malay ba ang pasyente?',
                style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
              Image.asset('asset/eye.png'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Add button function here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('Wala'),
                  ),
                  const SizedBox(width: 30),  // Space between the two buttons
                  ElevatedButton(
                    onPressed: () {
                      // Add button function here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('Meron'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
