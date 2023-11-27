import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../constant/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    super.initState();
    // Trigger navigation after a delay
    navigateToHome();
  }

  @override
  void dispose() {
    // Dispose of the animation controller to avoid memory leaks
    _animationController.dispose();
    super.dispose();
  }

  Future<void> navigateToHome() async {
    // Delayed navigation to the next screen (Login)
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, '/Login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF00CCFF),
                  ColorApp.color1,
                ],
              ),
            ),
          ),
          // Content in the Center
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo with scaling animation
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 8.0,
                    ),
                  ),
                  child: ScaleTransition(
                    scale: _animation,
                    child: Image.asset(
                      ImageApp.logo,
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
                const SizedBox(height: 220),

                const Text(
                  '@Dev Moh Obeiat',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
