import 'package:assignment_beat/Widget/custom_text.dart';
import 'package:assignment_beat/constant/color.dart';
import 'package:flutter/material.dart';

import '../../constant/image.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            ColorApp.backgroundcolor, // Background color of the scaffold
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    ImageApp.background, // Background image asset
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const Spacer(),
              ],
            ),

            // SafeArea for content within the visible screen area
            SafeArea(
              child: ListView(
                children: [
                  const SizedBox(height: 40.0),

                  // Logo Image
                  Image.asset(
                    ImageApp.logo,
                    width: 120,
                    height: 150,
                  ),

                  // Card Stack for the login form
                  Stack(
                    children: [
                      Card(
                        margin: const EdgeInsets.all(32.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          primary: false,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(16.0),
                          children: [
                            // Title for the login form
                            Customtext(title: 'Login'),

                            const SizedBox(height: 40.0),

                            // Username TextField
                            const TextField(
                              decoration: InputDecoration(
                                labelText: "Enter Username",
                              ),
                            ),

                            // Password TextField
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Enter Password",
                              ),
                            ),

                            const SizedBox(height: 30.0),

                            // Login Button
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the '/Home' screen and remove login screen from the stack
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/Home', (route) => false);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(16.0),
                                backgroundColor: ColorApp.color2,
                              ),
                              child: const Text("Login"),
                            ),

                            const SizedBox(height: 10.0),

                            // Sign Up Link
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  "Don't have an Account ? ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Customtext(
                                  title: 'Sign Up',
                                  size: 12,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
