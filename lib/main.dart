import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'navigation_bar/navigation.dart'; // Import your navigation logic here
import 'Login_Signup/signup.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized properly
  await Firebase.initializeApp(); // Initialize Firebase once
  runApp(const MyApp()); // Run your app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Mitra',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const signup(), // Use your navigation widget
    );
  }
}
