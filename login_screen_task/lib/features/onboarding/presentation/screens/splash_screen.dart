import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            'assets/images/image1.jpg',
            fit: BoxFit.cover,
          ),
          Text(
            'Team Work all',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
