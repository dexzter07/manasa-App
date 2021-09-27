import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/widgets/custom_appbar.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:get/get.dart';
class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),

        child: Column(
          children: [
            SizedBox(height: Get.height * 0.05,),

            Row(
              children: [

              ],
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                  itemCount: 10,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  itemBuilder: (context, index){
                      return Container(
                        height: 200,
                        width: 100,
                        color: Colors.white,
                      );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
            ),
          ],

        ),
      ),
    );
  }
}
