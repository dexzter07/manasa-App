import 'package:flutter/material.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class VotingList extends StatefulWidget {
  @override
  _VotingListState createState() => _VotingListState();
}

class _VotingListState extends State<VotingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryDarkGreen,
        title: CustomTextWidget("Voting List"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     CustomTextWidget("Image", style: CustomTextStyle.boldMediumTextStyle(),),
              //     CustomTextWidget("Name", style: CustomTextStyle.boldMediumTextStyle(),),
              //     CustomTextWidget("Voting Id", style: CustomTextStyle.boldMediumTextStyle(),),
              //     CustomTextWidget("Action", style: CustomTextStyle.boldMediumTextStyle(),),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget("Round 1", style: CustomTextStyle.ultraBoldTextStyle1(),),
                  CustomTextWidget("Voting Left: 10", style: CustomTextStyle.bigTextStyle(),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/images/auth.jpg"), width: 100,),
                  CustomTextWidget("Dheeraj", style: CustomTextStyle.boldMediumTextStyle(),),
                  CustomTextWidget("#1007", style: CustomTextStyle.boldMediumTextStyle(),),
                  FlatButton(onPressed: (){
                    Get.defaultDialog(
                      title: "Voting Successfully Done!",
                      middleText: "You've voted 1 times left 10 more votes.",
                      confirm: FlatButton(onPressed: (){
                        Navigator.pop(context,VotingList());
                      }, child: Text("Ok"))
                          
                    );
                  },
                      color: AppColors.primaryButtonColor,
                      child: Text("Vote")
                  )
                ],
              ),
              SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/images/auth.jpg"), width: 100,),
                  CustomTextWidget("Sandeep", style: CustomTextStyle.boldMediumTextStyle(),),
                  CustomTextWidget("#1008", style: CustomTextStyle.boldMediumTextStyle(),),
                  FlatButton(onPressed: (){},
                      color: AppColors.primaryButtonColor,
                      child: Text("Vote")
                  )
                ],
              ),
              SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/images/auth.jpg"), width: 100,),
                  CustomTextWidget("Bhawana", style: CustomTextStyle.boldMediumTextStyle(),),
                  CustomTextWidget("#1007", style: CustomTextStyle.boldMediumTextStyle(),),
                  FlatButton(onPressed: (){},
                      color: AppColors.primaryButtonColor,
                      child: Text("Vote")
                  )
                ],
              ),
              SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/images/auth.jpg"), width: 100,),
                  CustomTextWidget("Jamil", style: CustomTextStyle.boldMediumTextStyle(),),
                  CustomTextWidget("#1007", style: CustomTextStyle.boldMediumTextStyle(),),
                  FlatButton(onPressed: (){

                  },
                      color: AppColors.primaryButtonColor,
                      child: Text("Vote")
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
