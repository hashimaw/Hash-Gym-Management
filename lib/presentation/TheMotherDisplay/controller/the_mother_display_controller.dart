import 'package:connect_gym/presentation/dashboard_page/responsive/dashboard_desktop.dart';
import 'package:connect_gym/presentation/door_access_page/responsive/door_access_desktop.dart';
import 'package:connect_gym/presentation/message_content_page/responsive/message_content_desktop.dart';
import 'package:connect_gym/presentation/plan_update_page/responsive/plan_update_desktop.dart';
import 'package:connect_gym/presentation/registration_page/responsive/registration_desktop.dart';
import 'package:connect_gym/presentation/view_members_page/responsive/view_members_desktop.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TheMotherDisplayController extends GetxController{
 var pageNumber = 1.obs;
  Widget route(){
    if (pageNumber.value == 1){
       return DashboardDesktop();
    }else if (pageNumber.value  == 2){
       return DoorAccessDesktop();
    }else if (pageNumber.value  == 3){
       return MessageContentDesktop();
    }else if (pageNumber.value  == 4){
       return PlanUpdate();
    }else if (pageNumber.value == 5){
       return RegistrationDesktop();
    }else if (pageNumber.value == 6){
       return ViewMembersDesktop();
    }
      return DashboardDesktop();
  }
}