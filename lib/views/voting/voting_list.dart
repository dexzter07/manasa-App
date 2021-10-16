import 'package:flutter/material.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/controllers/contestant_controller.dart';
import 'package:manasa/models/contestant_response.dart';
import 'package:manasa/views/voting/voting_list_view.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class VotingList extends StatefulWidget {

  @override
  _VotingListState createState() => _VotingListState();
}

class _VotingListState extends State<VotingList> {
  ContestantListController _contestantListController = Get.put(ContestantListController());
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
          child:
              Obx(() => _contestantListController.isLoading.value == true?Center(
                child: CircularProgressIndicator(),
              ): ListView.builder(
                cacheExtent: 999,
                itemCount: _contestantListController.contestantList.length,
                itemBuilder: (context, index){
                  return VotingListView(_contestantListController.contestantList[index]);
                },
              ),
              ),


        ),
      ),
    );
  }
}
