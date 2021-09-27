import 'package:flutter/material.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/views/authentication/register.dart';
import 'package:manasa/views/voting/voting_list.dart';
import 'package:manasa/widgets/custom_inkwell.dart';
import 'package:manasa/widgets/custom_text_field.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:manasa/widgets/full_width_button.dart';
import 'package:get/get.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/auth.jpg"), width: Get.width,height: Get.height *0.3,),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidget("Enter Contact No.", style: CustomTextStyle.bigTextStyle(),)),
              SizedBox(height: 10,),
              CustomTextField(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget("Don't have an account ?", style: CustomTextStyle.mediumTextStyle(),),
                  CustomInkWell(
                    onTap: (){
                      Navigator.pop(context,Register());
                    },
                    child: CustomTextWidget(" Register", style: CustomTextStyle.boldMediumTextStyle(),),
                  )
                ],
              ),
              SizedBox(height: 30,),
              FullWidthButton(
                onTap: (){
                  Get.to(VotingList());
                },
                title: "Log In",
              )
            ],
          ),
        ),
      ),
    );
  }
}
