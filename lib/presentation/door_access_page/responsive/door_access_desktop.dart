import 'package:flutter/material.dart';

import '../../../utils.dart';

class DoorAccessDesktop extends StatelessWidget {
  const DoorAccessDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.fromLTRB(35*fem, 20*fem, 20*fem, 50*fem),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Card( //membership status
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18*fem),
              ),
              surfaceTintColor: const Color(0xffffffff),
              color: const Color(0xffffffff),
              elevation: 4,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width:1010*fem,
                height: 440*fem,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xff5D57A3),
                        width: 1015*fem,
                        height: 70*fem,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.check_circle,
                              size: 30,
                              color: Colors.white,
                            ),
                        Text( '    Active Membership',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Colors.white,),
                        )
                          ],
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(40*fem, 30*fem, 10*fem, 10*fem) ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.account_circle,
                              size: 130*fem,
                              color: const Color(0xff5D57A3),
                            ),
                            SizedBox(width: 50*fem,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(//the name
                                  children: [
                                    const Icon(Icons.account_circle_outlined,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    Text('   John Wick',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Colors.black,),)
                                  ],
                                ),
                                Row(//the name
                                  children: [
                                    const Icon(Icons.stairs_outlined,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('   Branch',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Colors.black,),),
                                        Text('   body builder',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: const Color(0xff5D57A3)),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 100*fem,),
                            Column(
                              children: [
                                Card( //the active sign
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18*fem),
                                  ),
                                  surfaceTintColor: const Color(0xff41A730),
                                  color: const Color(0xff41A730),
                                  elevation: 4,
                                  clipBehavior: Clip.hardEdge,
                                  child: SizedBox(
                                    width:500*fem,
                                    height: 60*fem,
                                    child: Container(
                                      padding:EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.check_circle,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                          Text('   Active Member',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.white,),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Card( //the inactive sign
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18*fem),
                                  ),
                                  surfaceTintColor: const Color(0xffFF4F4F),
                                  color: const Color(0xffFF4F4F),
                                  elevation: 4,
                                  clipBehavior: Clip.hardEdge,
                                  child: SizedBox(
                                    width:500*fem,
                                    height: 60*fem,
                                    child: Container(
                                      padding:EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.error_outlined,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                          Text('   Account Frozen',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.white,),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(20*fem, 10*fem, 10*fem, 10*fem),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column( //the first column
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.star_border_purple500_outlined,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    SizedBox(width: 7,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Membership',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Colors.black,)),
                                        SizedBox(height: 3,),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 0.5,
                                              color: const Color(0xff2B2B2B),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Text('Special  ',
                                                style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: const Color(0xff2B2B2B)),),
                                              const Icon(Icons.card_giftcard,
                                                size: 20,
                                                color: Color(0xff2B2B2B),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 20*fem,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.ac_unit,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    SizedBox(width: 7,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Retention Rate',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.black,)),
                                        SizedBox(height: 3,),
                                        Text('28%',
                                          style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.5*ffem/fem,
                                              color: const Color(0xff2B2B2B)),),
                                      ],
                                    )
                                  ],
                                ),
                  
                              ],
                            ),
                            SizedBox(width: 100*fem,),
                            Column(//the second column
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.av_timer_outlined,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    SizedBox(width: 7,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Expiration Date',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.black,)),
                                        SizedBox(height: 3,),
                  
                                        Text('Apr-10-2024',
                                          style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.5*ffem/fem,
                                              color: const Color(0xff2B2B2B)),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 20*fem,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.ac_unit,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    SizedBox(width: 7,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Remaining Time',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.black,)),
                                        SizedBox(height: 3,),
                                        Text('40-days',
                                          style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.5*ffem/fem,
                                              color: const Color(0xff2B2B2B)),),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 100*fem,),
                            Column(//the third column
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.repeat,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    SizedBox(width: 7,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Reputation',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.black,)),
                                        SizedBox(height: 3,),
                  
                                        Text('Experienced',
                                          style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.5*ffem/fem,
                                              color: const Color(0xff2B2B2B)),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 20*fem,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.timelapse_outlined,
                                      size: 25,
                                      color: Color(0xff5D57A3),
                                    ),
                                    SizedBox(width: 7,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Customer Reputation',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Colors.black,)),
                                        SizedBox(height: 3,),
                                        Text('5-years',
                                          style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.5*ffem/fem,
                                              color: const Color(0xff2B2B2B)),),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card( //the door check-in
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18*fem),
              ),
              surfaceTintColor: const Color(0xffffffff),
              color: const Color(0xffffffff),
              elevation: 4,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width:1010*fem,
                height: 320*fem,
                child: SingleChildScrollView(
                  child: Container(
                    padding:EdgeInsets.fromLTRB(50*fem, 20*fem, 50*fem, 10*fem) ,
                    child: Column(
                      children: [
                        Text('Door Check-in',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: const Color(0xff2B2B2B)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Monday',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B))),
                            Text('14:15-18:59',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B)))
                          ],
                        ),
                        Divider(thickness: 0.5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Tuesday',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B))),
                            Text('14:15-18:59',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B)))
                          ],
                        ),
                        Divider(thickness: 0.5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Wednesday',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B))),
                            Text('08:20-9:43',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B)))
                          ],
                        ),
                        Divider(thickness: 0.5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Friday',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B))),
                            Text('04:15-08:04',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B)))
                          ],
                        ),
                        Divider(thickness: 0.5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Saturday',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B))),
                            Text('02:15-04:59',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B)))
                          ],
                        ),
                        Divider(thickness: 0.5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Sunday',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: const Color(0xff2B2B2B))),
                            Text('absent',
                                style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Colors.red))
                          ],
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
