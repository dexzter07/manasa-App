import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/models/contestant_response.dart';
import 'package:manasa/views/voting/voting_list.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class VotingListView extends StatefulWidget {
  final ContestantList lists;
  const VotingListView(this.lists);
  @override
  _VotingListViewState createState() => _VotingListViewState();
}

class _VotingListViewState extends State<VotingListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: Image(image: NetworkImage('http://neeyaraproduction.com/${widget.lists.passphoto}'), width: 100,height: 100,)),
            CustomTextWidget(widget.lists.name, style: CustomTextStyle.boldMediumTextStyle(),),
            CustomTextWidget("#${widget.lists.id }", style: CustomTextStyle.boldMediumTextStyle(),),
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
      ],
    );
  }
}
