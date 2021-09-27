
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/views/profile/privacy_policy.dart';
import 'package:manasa/widgets/custom_inkwell.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:manasa/widgets/user_profile_widget.dart';
import 'package:share/share.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:50,),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user1.jpg"),
                  radius: 60,
                ),
                SizedBox(height: 10,),
                CustomTextWidget("Manasa Industries Pvt Ltd.",style: CustomTextStyle.boldMediumTextStyle(),),
                CustomTextWidget("+91 9876543210",style: CustomTextStyle.smallTextStyle1(),),
                SizedBox(height: 50,),

                CustomInkWell(
                    onTap: (){
                      Get.bottomSheet(
                          Container(
                            color: AppColors.primaryDarkGreen,
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.call,color: Colors.white,size: 20,),
                                    SizedBox(width: 10,),
                                    CustomTextWidget("8570836629",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.email,color: Colors.white,size: 20,),
                                    SizedBox(width: 10,),
                                    CustomTextWidget("dexztercodes07@email.com",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
                                  ],
                                ),
                              ],
                            ),
                          )
                      );
                    },
                    child: UserProfileComponent(Title: "Contact Us",icon: Icon(Icons.phone,color: AppColors.primaryDarkGreen,size: 17,),)),
                CustomInkWell(
                    onTap: (){
                      Share.share(SHAREMESSAGE);
                    },
                    child: UserProfileComponent(Title: "Invite Friends",icon: Icon(Icons.share,color: AppColors.primaryDarkGreen,size: 17,),)),
                CustomInkWell(
                    onTap: (){
                      LaunchReview.launch(androidAppId: "com.gtkbasket");
                    },
                    child: UserProfileComponent(Title: "Rate Us",icon: Icon(Icons.star,color: AppColors.primaryDarkGreen,size: 17,),)),
                CustomInkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return PrivacyPolicyScreen();}));

                    },
                    child: UserProfileComponent(Title: "Privacy Policy",icon: Icon(Icons.policy,color: AppColors.primaryDarkGreen,size: 17,),)),
                CustomInkWell(
                  //  onTap: (){
                  //    Navigator.push(context, MaterialPageRoute(builder: (context){return HelpSupport();}));
                  // },
                    child: UserProfileComponent(Title: "Help and Support",icon: Icon(Icons.help,color: AppColors.primaryDarkGreen,size: 17,),)),


              ],
            ),
          ),
        )
    );
  }
}
