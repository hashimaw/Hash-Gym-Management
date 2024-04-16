import 'package:flutter/material.dart';

import '../../../utils.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 50*fem),
        child: Column(
          children: [
            Container(padding: EdgeInsets.only(right:70*fem,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:Icon(Icons.notifications_rounded,
                      size: 50*fem,),
                    color: const Color(0xff1a1363),
                  )
                ],
              ),
            ),
            Row(//the two columns divider
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                  child: Column(//the main content column
                    children: [
                      Card( //the welcome banner
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18*fem),
                        ),
                        surfaceTintColor: const Color(0xffffffff),
                        color: const Color(0xffffffff),
                        elevation: 4,
                        clipBehavior: Clip.hardEdge,
                        child: SizedBox(
                          width:700*fem,
                          height: 270*fem,
                          child: Container(
                            padding:EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem) ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text:TextSpan(
                                    text: 'Welcome,  ',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                  text: 'Hashim Abdrehman\n',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 22*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5*ffem/fem,
                                        color: const Color(0xff1a1363),
                                      )),
                                      TextSpan(

                                          text: '\nwelcome your company is doing good and from\n there you can manage your '
                                              'company with  our\n user friendly web app that is built with flutter as\n front end '
                                              'and node.js as backend and mongodb\n as database and hahucloud as our server',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Colors.black,
                                          ))
                                    ]
                                  ),
                                  ),
                                SizedBox(width: 50*fem,),
                                Icon(Icons.account_circle,
                                  size: 160*fem,
                                  color: const Color(0xff1a1363),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Card( //the coaches
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18*fem),
                            ),
                            surfaceTintColor: const Color(0xffffffff),
                            color: const Color(0xffffffff),
                            elevation: 4,
                            clipBehavior: Clip.hardEdge,
                            child: SizedBox(
                              width:350*fem,
                              height: 270*fem,

                            ),
                          ),
                          const SizedBox(width: 5,),
                          Card( //the sales
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18*fem),
                            ),
                            surfaceTintColor: const Color(0xffffffff),
                            color: const Color(0xffffffff),
                            elevation: 4,
                            clipBehavior: Clip.hardEdge,
                            child: SizedBox(
                              width:350*fem,
                              height: 270*fem,

                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Card( //the active members
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18*fem),
                        ),
                        surfaceTintColor: const Color(0xffffffff),
                        color: const Color(0xffffffff),
                        elevation: 4,
                        clipBehavior: Clip.hardEdge,
                        child: SizedBox(
                          width:700*fem,
                          height: 270*fem,

                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                  child: Column(//the side content column
                    children: [
                      Card( //the calender
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18*fem),
                        ),
                        surfaceTintColor: const Color(0xffffffff),
                        color: const Color(0xffffffff),
                        elevation: 4,
                        clipBehavior: Clip.hardEdge,
                        child: SizedBox(
                          width:270*fem,
                          height: 270*fem,

                        ),
                      ),
                      const SizedBox(height: 10,),
                      Card( //the inventory
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18*fem),
                        ),
                        surfaceTintColor: const Color(0xffffffff),
                        color: const Color(0xffffffff),
                        elevation: 4,
                        clipBehavior: Clip.hardEdge,
                        child: SizedBox(
                          width:270*fem,
                          height: 270*fem,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
