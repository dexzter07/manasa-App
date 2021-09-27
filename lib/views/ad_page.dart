import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manasa/views/authentication/register.dart';
import 'package:manasa/views/navscreen.dart';
import 'package:manasa/widgets/custom_inkwell.dart';

class AdPage extends StatefulWidget {
  @override
  _AdPageState createState() => _AdPageState();
}

class _AdPageState extends State<AdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Container(
        height: Get.height,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            CustomInkWell(
              onTap: () {
                Get.to(Register());
              },
              child: Image(
                image: AssetImage("assets/images/flyer.png"),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 15,
              top: 45,
              child: CustomInkWell(
                onTap: () {
                  Get.to(NavScreen());
                },
                child: Icon(
                  Icons.clear,
                  size: 38,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
