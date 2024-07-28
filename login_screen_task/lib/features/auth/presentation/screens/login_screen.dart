import 'package:flutter/material.dart';
import 'package:login_screen_task/core/utils/themes/theme_service.dart';
import 'package:login_screen_task/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:login_screen_task/features/onboarding/presentation/widgets/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 150.0, bottom: 20.0, right: 40.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lets Sign you in',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 50.0),
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.titleLarge,
                            children: const [
                              TextSpan(text: 'Welcome Back'),
                              TextSpan(text: '  , \n'),
                              TextSpan(text: 'You\'ve been missed'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        const TextFormFieldWidget(
                          hintText: 'Email, phone & username',
                          width: 300, // Specify desired width here
                        ),
                        const SizedBox(height: 20.0),
                        const TextFormFieldWidget(
                          hintText: 'Password',
                          width: 300, // Specify desired width here
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ButtonWidget(
                                  height: 30,
                                  color: ThemeService.instance.defaultTheme
                                      .colorScheme.primary,
                                  text: 'Sign in',
                                ),
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
                              icon: Image.asset(
                                  'assets//images/gmail.png'), // Replace with your asset path
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets//images/facebook.png'), // Replace with your asset path
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets//images/apple.png'), // Replace with your asset path
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                const TextSpan(text: "Don't have an account? "),
                                TextSpan(
                                  text: 'Register Now',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
