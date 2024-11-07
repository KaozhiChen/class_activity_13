// ignore_for_file: prefer_final_fields

import 'package:class_activity_13/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    user = _auth.currentUser;
  }

  Future<void> _signOut() async {
    await _auth.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => const MyHomePage(title: 'Firebase Auth Demo')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "👤",
              style: TextStyle(fontSize: 60),
            ),
            const SizedBox(height: 16),
            Text(
              "Hi, ${user?.email ?? "User"}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              "Change Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: "New Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Update Password"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _signOut,
              child: const Text("Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}
