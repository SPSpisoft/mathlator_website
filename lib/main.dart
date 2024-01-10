import 'package:flutter/material.dart';
import 'package:mathlator_website/view/home_page.dart';
import 'package:get/get.dart';
void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Mathlator Website - BEST Calculator Ever!",
    home: HomePage(),
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
  ));
}