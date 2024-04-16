import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SidebarController extends GetxController{

  //button 1 properties
  var otherButtonColorsForBtn1 = 0x0000000.obs;
  var backgroundColorForBtn1 = 0xffECE9E9.obs;
  var textColorForBtn1 = 0xff1a1363.obs;
  var fontWeightForBtn1 = FontWeight.w700.obs;
  var fontSizeForBtn1 = 17.obs;
  //button 2 properties
  var otherButtonColorsForBtn2 = 0x0000000.obs;
  var backgroundColorForBtn2 = 0x00000000.obs;
  var textColorForBtn2 = 0xffffffff.obs;
  var fontWeightForBtn2 = FontWeight.w300.obs;
  var fontSizeForBtn2 = 15.obs;
  //button 3 properties
  var otherButtonColorsForBtn3 = 0x0000000.obs;
  var backgroundColorForBtn3 = 0x00000000.obs;
  var textColorForBtn3 = 0xffffffff.obs;
  var fontWeightForBtn3 = FontWeight.w300.obs;
  var fontSizeForBtn3 = 15.obs;
  //button 4 properties
  var otherButtonColorsForBtn4 = 0x0000000.obs;
  var backgroundColorForBtn4 = 0x00000000.obs;
  var textColorForBtn4 = 0xffffffff.obs;
  var fontWeightForBtn4 = FontWeight.w300.obs;
  var fontSizeForBtn4 = 15.obs;
  //button 5 properties
  var otherButtonColorsForBtn5 = 0x0000000.obs;
  var backgroundColorForBtn5 = 0x00000000.obs;
  var textColorForBtn5 = 0xffffffff.obs;
  var fontWeightForBtn5 = FontWeight.w300.obs;
  var fontSizeForBtn5 = 15.obs;
  //button 6 properties
  var otherButtonColorsForBtn6 = 0x0000000.obs;
  var backgroundColorForBtn6 = 0x00000000.obs;
  var textColorForBtn6 = 0xffffffff.obs;
  var fontWeightForBtn6 = FontWeight.w300.obs;
  var fontSizeForBtn6 = 15.obs;


  void activeButtonOne(){
    otherButtonColorsForBtn1.value = 0x0000000;
    backgroundColorForBtn1.value = 0xffECE9E9;
    textColorForBtn1.value = 0xff1a1363;
    fontWeightForBtn1.value = FontWeight.w700;
    fontSizeForBtn1.value=17;
}
  void inactiveButtonOne(){
    otherButtonColorsForBtn1.value = 0x0000000;
    backgroundColorForBtn1.value = 0x0000000;
    textColorForBtn1.value = 0xffffffff;
    fontWeightForBtn1.value = FontWeight.w300;
    fontSizeForBtn1.value = 15;
  }
  void activeButtonTwo(){
    otherButtonColorsForBtn2.value = 0x0000000;
    backgroundColorForBtn2.value = 0xffECE9E9;
    textColorForBtn2.value = 0xff1a1363;
    fontWeightForBtn2.value = FontWeight.w700;
    fontSizeForBtn2.value=17;
  }
  void inactiveButtonTwo(){
    otherButtonColorsForBtn2.value = 0x0000000;
    backgroundColorForBtn2.value = 0x0000000;
    textColorForBtn2.value = 0xffffffff;
    fontWeightForBtn2.value = FontWeight.w300;
    fontSizeForBtn2.value = 15;
  }
  void activeButtonThree(){
    otherButtonColorsForBtn3.value = 0x0000000;
    backgroundColorForBtn3.value = 0xffECE9E9;
    textColorForBtn3.value = 0xff1a1363;
    fontWeightForBtn3.value = FontWeight.w700;
    fontSizeForBtn3.value=17;
  }
  void inactiveButtonThree(){
    otherButtonColorsForBtn3.value = 0x0000000;
    backgroundColorForBtn3.value = 0x0000000;
    textColorForBtn3.value = 0xffffffff;
    fontWeightForBtn3.value = FontWeight.w300;
    fontSizeForBtn3.value = 15;
  }
  void activeButtonFour(){
    otherButtonColorsForBtn4.value = 0x0000000;
    backgroundColorForBtn4.value = 0xffECE9E9;
    textColorForBtn4.value = 0xff1a1363;
    fontWeightForBtn4.value = FontWeight.w700;
    fontSizeForBtn4.value=17;
  }
  void inactiveButtonFour(){
    otherButtonColorsForBtn4.value = 0x0000000;
    backgroundColorForBtn4.value = 0x0000000;
    textColorForBtn4.value = 0xffffffff;
    fontWeightForBtn4.value = FontWeight.w300;
    fontSizeForBtn4.value = 15;
  }
  void activeButtonFive(){
    otherButtonColorsForBtn5.value = 0x0000000;
    backgroundColorForBtn5.value = 0xffECE9E9;
    textColorForBtn5.value = 0xff1a1363;
    fontWeightForBtn5.value = FontWeight.w700;
    fontSizeForBtn5.value=17;
  }
  void inactiveButtonFive(){
    otherButtonColorsForBtn5.value = 0x0000000;
    backgroundColorForBtn5.value = 0x0000000;
    textColorForBtn5.value = 0xffffffff;
    fontWeightForBtn5.value = FontWeight.w300;
    fontSizeForBtn5.value = 15;
  }
  void activeButtonSix(){
    otherButtonColorsForBtn6.value = 0x0000000;
    backgroundColorForBtn6.value = 0xffECE9E9;
    textColorForBtn6.value = 0xff1a1363;
    fontWeightForBtn6.value = FontWeight.w700;
    fontSizeForBtn6.value=17;
  }
  void inactiveButtonSix(){
    otherButtonColorsForBtn6.value = 0x0000000;
    backgroundColorForBtn6.value = 0x0000000;
    textColorForBtn6.value = 0xffffffff;
    fontWeightForBtn6.value = FontWeight.w300;
    fontSizeForBtn6.value = 15;
  }

}