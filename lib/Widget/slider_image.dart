import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Data/data.dart';
import '../constant/color.dart';

Widget sliderWidget() {
  return CarouselSlider(
    items: slider.asMap().entries.map((entry) {
      int index = entry.key;
      Image image = entry.value;

      // Create a container for each carousel item
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        // Stack to overlay image and title
        child: Stack(
          fit: StackFit.expand,
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: image.image,
                fit: BoxFit.cover,
              ),
            ),
            // Apply a shader mask to the image for a gradient effect
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [
                    ColorApp.color2,
                    ColorApp.color1,
                    ColorApp.backgroundcolor,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              // Align the title to the bottom-right of the image
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    titleSlider[index],
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }).toList(),
    // Configure carousel options
    options: CarouselOptions(
      height: 150.0,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16 / 9,
    ),
  );
}
