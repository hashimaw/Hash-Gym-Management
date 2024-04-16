import 'package:flutter/material.dart';
import '../../../utils.dart';
import 'package:get/get.dart';
import 'package:connect_gym/presentation/sidebar/controller/sidebar_controller.dart';

import '../../TheMotherDisplay/controller/the_mother_display_controller.dart';

class SidebarDesktop extends StatelessWidget {
  final SidebarController sidebarController = Get.put(SidebarController());
  final TheMotherDisplayController theMotherDisplayDesktop = Get.put(TheMotherDisplayController());
  SidebarDesktop({super.key,});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: 270*fem,
        decoration:  BoxDecoration (
          color:  const Color(0xff1a1363),
          borderRadius:  BorderRadius.only (
              topRight:Radius.circular(18*fem) ,
              bottomRight:Radius.circular(18*fem)),),

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Image(
                    width: 70*fem,
                    height: 70*fem,
                    image: const AssetImage (
                    'assets/page-1/images/personcircle.png',
                  ),),
                  const SizedBox(height: 10,),
                  Text(
                    'Hashim Abdrehman',
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*ffem/fem,
                      color: const Color(0xffffffff),
                    ),),
                  const SizedBox(height: 2),

                  Text(
                    'hashimabdrehman@gmail.com',
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5*ffem/fem,
                      color: const Color(0xffffffff),
                    ),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(21*fem,0,0,0),
              child: Column(
                  children: [
                    const SizedBox(height: 10,),

                    //Button 1
                    Obx(
                      ()=> ElevatedButton(onPressed: (){
                        sidebarController.activeButtonOne();
                        sidebarController.inactiveButtonTwo();
                        sidebarController.inactiveButtonThree();
                        sidebarController.inactiveButtonFour();
                        sidebarController.inactiveButtonFive();
                        sidebarController.inactiveButtonSix();
                        theMotherDisplayDesktop.pageNumber.value=1;
                        },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(sidebarController.otherButtonColorsForBtn1.value),
                        shadowColor: Color(sidebarController.otherButtonColorsForBtn1.value),
                        backgroundColor: Color(sidebarController.backgroundColorForBtn1.value),
                        surfaceTintColor: Color(sidebarController.otherButtonColorsForBtn1.value),
                        minimumSize: const Size(250,50),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10*fem),
                          topLeft: Radius.circular(10*fem)),),),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Icon(
                              Icons.dashboard,
                              color: Color(sidebarController.textColorForBtn1.value),
                              size: 24.0,
                            ),
                            const SizedBox(width: 10,),
                            Text(
                              'Dashboard',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: sidebarController.fontSizeForBtn1.value*ffem,
                                fontWeight: sidebarController.fontWeightForBtn1.value,
                                height: 1.5*ffem/fem,
                                color: Color(sidebarController.textColorForBtn1.value),
                              ),),
                          ],
                        ),
                      ),
                    ),

                    //Button 2
                     Obx(
                       ()=> ElevatedButton(onPressed: (){
                          sidebarController.activeButtonTwo();
                          sidebarController.inactiveButtonOne();
                          sidebarController.inactiveButtonThree();
                          sidebarController.inactiveButtonFour();
                          sidebarController.inactiveButtonFive();
                          sidebarController.inactiveButtonSix();
                          theMotherDisplayDesktop.pageNumber.value=2;
                        },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color(sidebarController.otherButtonColorsForBtn2.value),
                              shadowColor: Color(sidebarController.otherButtonColorsForBtn2.value),
                              backgroundColor: Color(sidebarController.backgroundColorForBtn2.value),
                              surfaceTintColor: Color(sidebarController.otherButtonColorsForBtn2.value),
                              minimumSize: Size(230,50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10*fem),
                                    topLeft: Radius.circular(10*fem)),),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                 Icon(
                                  Icons.sensor_door_outlined,
                                  color: Color(sidebarController.textColorForBtn2.value),
                                  size: 24.0,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'Door Access',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: sidebarController.fontSizeForBtn2.value*ffem,
                                    fontWeight: sidebarController.fontWeightForBtn2.value,
                                    height: 1.5*ffem/fem,
                                    color: Color(sidebarController.textColorForBtn2.value),
                                  ),),
                              ],
                            ),
                        ),
                     ),

                    //Button 3
                    Obx(
                        ()=> ElevatedButton(onPressed: (){
                          sidebarController.activeButtonThree();
                          sidebarController.inactiveButtonOne();
                          sidebarController.inactiveButtonTwo();
                          sidebarController.inactiveButtonFour();
                          sidebarController.inactiveButtonFive();
                          sidebarController.inactiveButtonSix();
                          theMotherDisplayDesktop.pageNumber.value=3;
                        },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color(sidebarController.otherButtonColorsForBtn3.value),
                              shadowColor: Color(sidebarController.otherButtonColorsForBtn3.value),
                              backgroundColor: Color(sidebarController.backgroundColorForBtn3.value),
                              surfaceTintColor: Color(sidebarController.otherButtonColorsForBtn3.value),
                              minimumSize: Size(230,50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10*fem),
                                    topLeft: Radius.circular(10*fem)),),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                 Icon(
                                  Icons.message_outlined,
                                  color: Color(sidebarController.textColorForBtn3.value),
                                  size: 24.0,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'Message',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: sidebarController.fontSizeForBtn3.value*ffem,
                                    fontWeight: sidebarController.fontWeightForBtn3.value,
                                    height: 1.5*ffem/fem,
                                    color: Color(sidebarController.textColorForBtn3.value),
                                  ),),
                              ],
                            ),
                        ),
                    ),

                    //Button 4
                    Obx(
                      ()=> ElevatedButton(onPressed: (){
                          sidebarController.activeButtonFour();
                          sidebarController.inactiveButtonOne();
                          sidebarController.inactiveButtonTwo();
                          sidebarController.inactiveButtonThree();
                          sidebarController.inactiveButtonFive();
                          sidebarController.inactiveButtonSix();
                          theMotherDisplayDesktop.pageNumber.value=4;
                        },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color(sidebarController.otherButtonColorsForBtn4.value),
                              shadowColor: Color(sidebarController.otherButtonColorsForBtn4.value),
                              backgroundColor: Color(sidebarController.backgroundColorForBtn4.value),
                              surfaceTintColor: Color(sidebarController.otherButtonColorsForBtn4.value),
                              minimumSize: Size(230,50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10*fem),
                                    topLeft: Radius.circular(10*fem)),),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.check_box_outlined,
                                  color: Color(sidebarController.textColorForBtn4.value),
                                  size: 24.0,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'Plan',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: sidebarController.fontSizeForBtn4.value*ffem,
                                    fontWeight: sidebarController.fontWeightForBtn4.value,
                                    height: 1.5*ffem/fem,
                                    color: Color(sidebarController.textColorForBtn4.value),
                                  ),),
                              ],
                            ),
                        ),
                    ),

                    //Button 5
                    Obx(
                      ()=> ElevatedButton(onPressed: (){
                          sidebarController.activeButtonFive();
                          sidebarController.inactiveButtonOne();
                          sidebarController.inactiveButtonTwo();
                          sidebarController.inactiveButtonThree();
                          sidebarController.inactiveButtonFour();
                          sidebarController.inactiveButtonSix();
                          theMotherDisplayDesktop.pageNumber.value=5;
                        },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color(sidebarController.otherButtonColorsForBtn5.value),
                              shadowColor: Color(sidebarController.otherButtonColorsForBtn5.value),
                              backgroundColor: Color(sidebarController.backgroundColorForBtn5.value),
                              surfaceTintColor: Color(sidebarController.otherButtonColorsForBtn5.value),
                              minimumSize: Size(230,50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10*fem),
                                    topLeft: Radius.circular(10*fem)),),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.note_alt_outlined,
                                  color: Color(sidebarController.textColorForBtn5.value),
                                  size: 24.0,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'Registration',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: sidebarController.fontSizeForBtn5.value*ffem,
                                    fontWeight: sidebarController.fontWeightForBtn5.value,
                                    height: 1.5*ffem/fem,
                                    color: Color(sidebarController.textColorForBtn5.value),
                                  ),),
                              ],
                            ),
                        ),
                    ),

                    //Button 6
                    Obx(
                      ()=> ElevatedButton(onPressed: (){
                          sidebarController.activeButtonSix();
                          sidebarController.inactiveButtonOne();
                          sidebarController.inactiveButtonTwo();
                          sidebarController.inactiveButtonThree();
                          sidebarController.inactiveButtonFour();
                          sidebarController.inactiveButtonFive();
                          theMotherDisplayDesktop.pageNumber.value=6;
                        },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color(sidebarController.otherButtonColorsForBtn6.value),
                              shadowColor: Color(sidebarController.otherButtonColorsForBtn6.value),
                              backgroundColor: Color(sidebarController.backgroundColorForBtn6.value),
                              surfaceTintColor: Color(sidebarController.otherButtonColorsForBtn6.value),
                              minimumSize: Size(230,50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10*fem),
                                    topLeft: Radius.circular(10*fem)),),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.supervisor_account_outlined,
                                  color: Color(sidebarController.textColorForBtn6.value),
                                  size: 24.0,
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'View Members',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: sidebarController.fontSizeForBtn6.value*ffem,
                                    fontWeight: sidebarController.fontWeightForBtn6.value,
                                    height: 1.5*ffem/fem,
                                    color: Color(sidebarController.textColorForBtn6.value),
                                  ),),
                              ],
                            ),
                        ),
                    ),

                    SizedBox(height: 100,),
                    ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          minimumSize: Size(230,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10*fem),
                                topLeft: Radius.circular(10*fem)),),),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.logout,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'logout',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.5*ffem/fem,
                                color: Color(0xffffffff),
                              ),),
                          ],
                        ),

                    ),

                  ],
                ),

            )

          ],
    ),

    );

  }
}