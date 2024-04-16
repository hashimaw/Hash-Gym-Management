import 'package:connect_gym/presentation/dashboard_page/responsive/dashboard_desktop.dart';
import 'package:connect_gym/presentation/sidebar/responsive/sidebar_desktop.dart';
import 'package:flutter/material.dart';
import 'package:connect_gym/presentation/TheMotherDisplay/controller/the_mother_display_controller.dart';
import 'package:get/get.dart';

class TheMotherDisplayDesktop extends StatelessWidget {
  final TheMotherDisplayController theMotherDisplayController = Get.put(TheMotherDisplayController());
  TheMotherDisplayDesktop({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECE9E9),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SidebarDesktop(),
          ),
           Obx(
             ()=> Expanded(
              flex: 8,
              child: theMotherDisplayController.route(),
                       ),
           )
        ],
      ),
    );
  }
}
