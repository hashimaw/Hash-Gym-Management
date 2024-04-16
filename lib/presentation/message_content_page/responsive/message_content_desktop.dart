import 'package:flutter/material.dart';

import '../../../utils.dart';

class MessageContentDesktop extends StatelessWidget {
  const MessageContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(35*fem, 20*fem, 20*fem, 50*fem),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 70*fem, 0*fem),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Message Content',
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 22*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*ffem/fem,
                      color: Color(0xff1a1363),),),
                  IconButton(
                    onPressed: () {},
                    icon:Icon(Icons.notifications_rounded,
                      size: 50*fem,),
                    color: const Color(0xff1a1363),
                  )
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18*fem),
              ),
              surfaceTintColor: const Color(0xffffffff),
              color: const Color(0xffffffff),
              elevation: 4,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width:1010*fem,
                height: 500*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(40*fem, 20*fem, 20*fem, 40*fem),
                  child: Column(
                    children: [
                      Text('Message Items',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Color(0xff1a1363),),),
                      Row(
                        children: [

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
