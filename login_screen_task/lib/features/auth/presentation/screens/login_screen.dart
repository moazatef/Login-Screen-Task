import 'package:flutter/material.dart';
import 'package:login_screen_task/core/utils/themes/theme_service.dart';
import 'package:login_screen_task/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:login_screen_task/features/onboarding/presentation/widgets/button_widget.dart';
import '../../../../core/utils/routes/routes_enum.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, top: 150.0, bottom: 20.0, right: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lets Sign you in',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 50.0),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: const [
                          TextSpan(text: 'Welcome Back'),
                          TextSpan(text: '  , \n'),
                          TextSpan(text: 'You have been missed'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Email, phone & username',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ButtonWidget(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.login.path);
                            },
                            height: 30,
                            color: ThemeService
                                .instance.defaultTheme.colorScheme.primary,
                            text: 'Sign in',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('or'),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/gmail.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset('assets/images/facebook.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset('assets/images/apple.png'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.register.path);
                            },
                            child: Text(
                              'Register Now',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
