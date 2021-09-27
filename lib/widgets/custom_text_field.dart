import 'package:flutter/material.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';

class CustomTextField extends StatelessWidget {

  final Function validator;
  final bool obSecureText;
  final BorderRadius borderRadius;
  final String hintText;
  final int maxLines;
  final bool numberButton;
  final TextEditingController controller;
  final EdgeInsets contentPadding;
  CustomTextField({this.contentPadding,this.controller,this.validator,this.obSecureText,this.borderRadius,this.hintText,this.maxLines,this.numberButton});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      maxLines: maxLines==null? 1 : maxLines,
      obscureText: obSecureText==null? false : obSecureText,
      validator: validator,
      keyboardType: numberButton==true ? TextInputType.number : null,
      style: CustomTextStyle.smallTextStyle1(),
      decoration: InputDecoration(
        contentPadding: contentPadding != null ? contentPadding : null,
          hintText:  hintText == null ? "" : hintText,
          hintStyle: CustomTextStyle.smallTextStyle1(color: Colors.grey),
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.withOpacity(0.4)),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
           ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          )
          // border: InputBorder.none
      ),
    );
  }
}


class CustomTextFieldWithIcon extends StatelessWidget {

  final Function validator;
  final bool obSecureText;
  final BorderRadius borderRadius;
  final String hintText;
  final int maxLines;
  final bool numberButton;
  final TextEditingController controller;
  final EdgeInsets contentPadding;
  final Icon icon;
  CustomTextFieldWithIcon({this.icon,this.contentPadding,this.controller,this.validator,this.obSecureText,this.borderRadius,this.hintText,this.maxLines,this.numberButton});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      maxLines: maxLines==null? 1 : maxLines,
      obscureText: obSecureText==null? false : obSecureText,
      validator: validator,
      keyboardType: numberButton==true ? TextInputType.number : null,
      style: CustomTextStyle.smallTextStyle1(color: Colors.white),
      decoration: InputDecoration(
          suffixIcon: icon,
          contentPadding: contentPadding != null ? contentPadding : null,
          hintText:  hintText == null ? "" : hintText,
          hintStyle: CustomTextStyle.smallTextStyle1(color: Colors.white),
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          )
        // border: InputBorder.none
      ),
    );
  }
}

