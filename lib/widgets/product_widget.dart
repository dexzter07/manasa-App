import 'package:flutter/material.dart';
import 'package:manasa/configs/styles/box_shadow.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/models/category_model.dart';
import 'package:manasa/models/product_model.dart';
import 'package:manasa/widgets/full_width_button.dart';
import 'custom_inkwell.dart';
import 'custom_text_widget.dart';


class ProductWidget extends StatelessWidget {
  final ProductModel productModel;
  ProductWidget({this.productModel});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){

        },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [CustomBoxShadow],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                child: Image.asset(productModel.imageUrl,height: 150,width:200,fit: BoxFit.cover,)),
            SizedBox(height: 2,),
            CustomTextWidget(productModel.title,style: CustomTextStyle.mediumTextStyle(),textOverflow: TextOverflow.ellipsis,),
            CustomTextWidget(productModel.subTitle,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),


          ],
        ),
      ),
    );
  }
}


class CategoryWidget extends StatelessWidget {
  final CategoryModel categoryModel;
  CategoryWidget({this.categoryModel});
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [CustomBoxShadow],
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                child: Image.asset(categoryModel.image,height: 140,width:200,fit: BoxFit.cover,)),
            SizedBox(height: 8,),
            CustomTextWidget(categoryModel.title,style: CustomTextStyle.mediumTextStyle(),textOverflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}