import 'package:flutter/material.dart';
import 'package:blsandfirstaid/emergency_page.dart';
import 'package:blsandfirstaid/first_aid.dart';
import 'package:blsandfirstaid/menu_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins', // Apply 'Poppins' globally
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 63, 57),
        toolbarHeight: 100.0,
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
                'asset/JDRlogo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        title: const Text(''),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            iconSize: 40,
            onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPage()),
                  );
            },
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
                'SITUATION:',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildButton(
                label: 'EMERGENCY',
                color: Colors.red,
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EmergencyPage()),
                  );                },
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
              ),
              const SizedBox(height: 10),
              _buildButton(
                label: 'FIRST AID',
                color: Colors.green,
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstAid()),
                  );                },
                padding: const EdgeInsets.symmetric(horizontal: 113, vertical: 40),
              ),
              const SizedBox(height: 30),
              const Divider(
                color: Colors.black,
                thickness: 3,
              ),
              const SizedBox(height: 30),
              _buildIconButton(Icons.local_hospital, 'HOSPITAL', Colors.orange),
              const SizedBox(height: 10),
              _buildIconButton(Icons.video_collection, 'TUTORIAL', Colors.grey),
              const SizedBox(height: 10),
              _buildIconButton(Icons.update, 'UPDATES', Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    required String label,
    required Color color,
    required VoidCallback onPressed,
    required EdgeInsets padding, // Added padding as a parameter
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding, // Use custom padding for each button
        textStyle: const TextStyle(fontSize: 18),
        elevation: 10, // Adds shadow for depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Smooth rounded corners
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label, Color color) {
    return ElevatedButton.icon(
      onPressed: () {
        // Button function here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        textStyle: const TextStyle(fontSize: 16),
        elevation: 8, // Adds shadow for depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Smooth rounded corners
        ),
      ),
      icon: Icon(icon, color: Colors.white),
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
