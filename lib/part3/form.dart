import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  int incorrectStateCount = 0;
  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  TextFormField(
                    controller: loginController,
                    decoration: InputDecoration(
                      labelText: 'Login',
                      hintText: 'Enter your login',
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your login';
                      }

                      if (value.length < 3) {
                        return 'Login must be at least 3 characters';
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Password can't be empty";
                      }

                      if (value.length < 4) {
                        return 'Password must be at least 4 characters';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        final login = loginController.text;
                        final password = passwordController.text;
                        setState(() {
                          isSuccessful = login == 'user' && password == '1234';
                        });
                      }
                    },
                    child: Text("Login"),
                  ),
                  if (isSuccessful)
                    Text(
                      "Hey you have found the correct credentials",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
