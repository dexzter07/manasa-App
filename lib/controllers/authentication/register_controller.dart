import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
class RegisterController extends GetxController{
  var name = TextEditingController();
  var phone = TextEditingController();
  var isLoading = false.obs;

  signUpFunc(){
    isLoading.value = true;

  }
}