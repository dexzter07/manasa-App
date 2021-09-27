import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/views/authentication/login.dart';
import 'package:manasa/views/voting/voting_list.dart';
import 'package:manasa/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:manasa/widgets/custom_inkwell.dart';
import 'package:manasa/widgets/custom_text_field.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:manasa/widgets/full_width_button.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomTextWidget("Register"),
        backgroundColor: AppColors.primaryDarkGreen,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Image(image: AssetImage("assets/images/auth.jpg"), width: Get.width,height: Get.height *0.3,),
                  SizedBox(height: 10,),
                  CustomTextWidget("Name", style: CustomTextStyle.boldMediumTextStyle(),),
                  SizedBox(height: 7,),
                  CustomTextField(),
                  SizedBox(height: 12,),
                  CustomTextWidget("Email", style: CustomTextStyle.boldMediumTextStyle(),),
                  SizedBox(height: 7,),
                  CustomTextField(),
                  SizedBox(height: 12,),
                  CustomTextWidget("Contact No.", style: CustomTextStyle.boldMediumTextStyle(),),
                  SizedBox(height: 7,),
                  CustomTextField(
                    numberButton: true,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget("Already have an account ?", style: CustomTextStyle.mediumTextStyle(),),
                      CustomInkWell(
                        onTap: (){
                          Get.to(Login());
                        },
                        child: CustomTextWidget(" Log In", style: CustomTextStyle.boldMediumTextStyle(),),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height*0.01,),
                  FullWidthButton(
                    onTap: (){
                      Get.to(VotingList());
                    },
                    title: "Register",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
