import 'package:flutter/material.dart';
import 'package:blsandfirstaid/emergency_page.dart';
import 'package:blsandfirstaid/first_aid.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              // Logo
              Image.asset(
                'asset/JDRlogo.png',  
                height: 190
                ,  
              ),
              const SizedBox(height: 40),  
              
             
              const Text(
                'SITUATION:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),  
              
              
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EmergencyPage()),
                  );
                  
                },
                style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.red,       
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                textStyle: const TextStyle(fontSize: 20),
                
                  
                ),
                child: const Text('EMERGENCY'),
              ),
              const SizedBox(height: 15),  
              
             
              ElevatedButton(
                onPressed: () {
                  // Navigate to EmergencyPage using Navigator.push
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstAid()),
                  );
                },
                style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 10, 185, 54),       // Text color of the button
                padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 30),
                textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('FIRST AID'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
