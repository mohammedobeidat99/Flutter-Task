import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

// Customtext widget is a reusable widget for displaying stylized text.
class Customtext extends StatelessWidget {
  
  Customtext({super.key, required this.title, this.size = 30});

  // The text to be displayed by the widget.
  final String? title;

  // The font size of the text.
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        // LinearGradient creates a linear gradient for the shader.
        return const LinearGradient(
          colors: [
            ColorApp.color2, // Start color of the gradient.
            ColorApp.color1, // End color of the gradient.
          ],
        ).createShader(bounds);
      },
      // Text widget with stylized properties.
      child: Text(
        title!, // The text to be displayed, marked as non-nullable.
        style: TextStyle(
          fontSize: size!.sp, // Font size of the text.
          fontWeight: FontWeight.w600, // Font weight of the text.
          color: Colors.white, 
        ),
        textAlign: TextAlign.center, 
      ),
    );
  }
}
