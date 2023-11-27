import 'package:assignment_beat/Widget/custom_text.dart';
import 'package:assignment_beat/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/prodact_widget.dart'; // Importing a product widget
import '../Data/data.dart'; // Importing data file with sample data
import '../Widget/slider_image.dart'; // Importing a slider widget

class Home extends StatelessWidget {
  // Constructor for the Home widget
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundcolor,
      appBar: AppBar(
        // App bar with an exit icon to navigate back to the login screen
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Login');
            },
            icon: const Icon(
              Icons.exit_to_app_sharp,
              color: ColorApp.color1,
            ),
          ),
        ],
        backgroundColor: ColorApp.color2,
        title: const Text(
          'Home',
          style: TextStyle(color: ColorApp.color1),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title for the slider section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Customtext(title: 'Our Projects'),
          ),
          // Slider widget for displaying images
          Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
            child: sliderWidget(),
          ),
          // Title for the grid of services
          Customtext(title: 'Our Services'),
           SizedBox(
            height: 15.h,
          ),
          // Expanded grid view for displaying services
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: listServices.length, 
              itemBuilder: (BuildContext context, int index) {
                // Building each item in the grid using the ProductItem widget
                return ProductItem(
                  item: listServices[index], // Passing data to the ProductItem
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
