import 'package:flutter/material.dart';
import 'package:login_screen_task/features/onboarding/presentation/widgets/button_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 1),
          Image.asset(
            'assets/images/image1.jpg',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            'Team Work all',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          Text(
            'We unite around common objectives, ensuring every team member’s efforts contribute towards a collective success',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Adjust alignment as needed
              children: [
                const Expanded(
                  child: ButtonWidget(
                    height: 60,
                    text: 'Sign Up',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 20.0), // Add spacing between the buttons
                Expanded(
                  child: ButtonWidget(
                    height: 60,
                    text: 'Register',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
