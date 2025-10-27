import 'package:flutter/material.dart';
import 'package:navigation_testing/screens/about_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Welcome to the Dashboard!'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const AboutScreen(),
              //   ),
              // );
              Navigator.pushNamed(context, '/about');
            },
            child: const Text("Go to About Screen"),
          ),
        ],
      ),
    );
  }
}
