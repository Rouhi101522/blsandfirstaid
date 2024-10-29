import 'package:flutter/material.dart';
import 'package:blsandfirstaid/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 63, 57),
        toolbarHeight: 100.0,
        title: const Text(""),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMenuButton(
                  label: "LANGUAGE: ENGLISH",
                  icon: Icons.language,
                  onPressed: () {
                    // Language button action
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                  fontSize: 16,
                ),
                const SizedBox(height: 10),
                _buildMenuButton(
                  label: "SET INFORMATION MANUALLY",
                  icon: Icons.edit,
                  onPressed: () {
                    // Manual information setting action
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 18),
                  fontSize: 15,
                ),
                const SizedBox(height: 10),
                _buildMenuButton(
                  label: "ABOUT THE APP",
                  icon: Icons.info,
                  onPressed: () {
                    // About button action
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 18),
                  fontSize: 15,
                ),
                const SizedBox(height: 10),
                _buildMenuButton(
                  label: "CONNECT TO GOOGLE",
                  icon: Icons.account_circle,
                  color: Colors.black,
                  iconColor: Colors.red,
                  onPressed: () {
                    // Google connection action
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                  fontSize: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton({
    required String label,
    required IconData icon,
    required VoidCallback onPressed,
    Color color = Colors.black,
    Color iconColor = Colors.black,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    double fontSize = 16,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 5,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: color, width: 1.5),
        ),
      ),
      icon: Icon(icon, color: iconColor),
      label: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
