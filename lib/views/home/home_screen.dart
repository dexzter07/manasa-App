import 'package:get/get.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasa/configs/constants/app_constants.dart';
import 'package:manasa/configs/styles/app_colors.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';
import 'package:manasa/models/category_model.dart';
import 'package:manasa/models/product_model.dart';
import 'package:manasa/views/authentication/register.dart';
import 'package:manasa/views/category/category.dart';
import 'package:manasa/widgets/custom_inkwell.dart';
import 'package:manasa/widgets/custom_sliver_grid_delegate.dart';
import 'package:manasa/widgets/custom_text_field.dart';
import 'package:manasa/widgets/custom_text_widget.dart';
import 'package:manasa/widgets/product_widget.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ProductModel> _productList = [
    ProductModel(imageUrl: "assets/images/pants.jpg",title: "Denim Jeans ",subTitle: "Pants",),
    ProductModel(imageUrl: "assets/images/shoes.jpg",title: "Air Jordon Shoe",subTitle: "Shoes",),
    ProductModel(imageUrl: "assets/images/goun.jpg",title: "Loue Vateon Goun",subTitle: "Goun",),
    ProductModel(imageUrl: "assets/images/shirt.jpg",title: "Blue Shirt",subTitle: "Shirt",),
    ProductModel(imageUrl: "assets/images/onepiece.jpeg",title: "Van Hausen OnePiece ads adas dasd",subTitle: "One Piece",),
    ProductModel(imageUrl: "assets/images/tshirt.jpg",title: "H&M T-Shirt",subTitle: "T-shirt",),
  ];

  List<CategoryModel> _categoryList = [
    CategoryModel(image: "assets/images/tshirt1.png",title: "T-Shirt"),
    CategoryModel(image: "assets/images/goun1.png",title: "Goun"),
    CategoryModel(image: "assets/images/shoes1.png",title: "Shoes"),
    CategoryModel(image: "assets/images/coat.png",title: "Coat"),
    CategoryModel(image: "assets/images/shorts.png",title: "Shorts"),
    CategoryModel(image: "assets/images/pants1.png",title: "Pants"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: ListView(
          children: [
            SizedBox(height: Get.height * 0.04,),
            Container(
              height: 200.0,
              child: Carousel(
                autoplay: true,
                images: [
                  InkWell(
                      onTap: (){
                      },
                      child: Image.asset("assets/images/slider1.jpg",
                      fit: BoxFit.cover,
                      )
                  ),
                  InkWell(
                      onTap: (){
                      },
                      child: Image.asset("assets/images/slider2.jpg",
                        fit: BoxFit.cover,
                      )
                  ),
                  InkWell(
                      onTap: (){
                      },
                      child: Image.asset("assets/images/slider3.jpg",
                        fit: BoxFit.cover,
                      )
                  ),

                ],

                autoplayDuration: Duration(seconds: 5),
                dotSize: 5.0,
                dotIncreaseSize: 2,
                dotIncreasedColor: Colors.orangeAccent,
                dotColor: Colors.grey,
                dotBgColor: Colors.transparent,
                indicatorBgPadding: 20.0,
              ),
            ),

            SizedBox(height: 20,),

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    "Category",
                    style: CustomTextStyle.boldMediumTextStyle(
                        color: AppColors.primaryDarkGreen),
                  ),
                  CustomInkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context){return CategoryScreen();}));
                      },
                      child: CustomTextWidget(
                        "See All",
                        style: CustomTextStyle.mediumTextStyle(color: AppColors.primaryDarkGreen),
                      )),
                ],
              ),
            ),
            SizedBox(height: 5),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: _categoryList.map((e) => CategoryWidget(categoryModel: e,)).toList()
              ),
            ),
            SizedBox(height: 10,),

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    "Products Promo",
                    style: CustomTextStyle.boldMediumTextStyle(
                        color: AppColors.textDarkColor),
                  ),
                  CustomInkWell(
                      onTap: () {

                      },
                      child: CustomTextWidget(
                        "See All",
                        style: CustomTextStyle.mediumTextStyle(color: AppColors.primaryDarkGreen),
                      )),
                ],
              ),
            ),

            GridView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                  crossAxisCount: 2,
                  height: 220.0,
                ),
                itemCount: _productList.length,
                itemBuilder: (context,index){
                  return ProductWidget(productModel: _productList[index]);
                }
            )
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.primaryDarkGreen,
          tooltip: "Vote",
          label: CustomTextWidget("Let's Vote",),
          icon:Icon(Icons.how_to_vote),
          onPressed: (){
            Get.to(Register());
          }),
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
        
        margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
        child: Column(
          children: [
            Container(

              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(categoryModel.image),
              ),
            ),
            SizedBox(height: 7,),
            CustomTextWidget(categoryModel.title,style: CustomTextStyle.mediumTextStyle(),)
          ],
        ),
      ),
    );
  }
}

