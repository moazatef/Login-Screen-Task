import 'package:flutter/material.dart';
import 'package:login_screen_task/core/utils/themes/theme_service.dart';
import 'package:login_screen_task/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:login_screen_task/features/onboarding/presentation/widgets/button_widget.dart';

import '../../../../core/utils/routes/routes_enum.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      'Lets Register',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 40.0),
                    Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 50.0),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: const [
                          TextSpan(text: 'Hello user , you have'),
                          TextSpan(text: ' \n'),
                          TextSpan(text: 'a greatful journey'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Name',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Bussiness name',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Phone',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const SizedBox(
                      child: TextFormFieldWidget(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ButtonWidget(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            height: 30,
                            color: ThemeService
                                .instance.defaultTheme.colorScheme.primary,
                            text: 'Sign Up',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Already have an account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.login.path);
                            },
                            child: Text(
                              'Login',
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
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
