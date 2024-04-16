import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils.dart';

class RegistrationDesktop extends StatelessWidget {
  const RegistrationDesktop({super.key});

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
                  Text('Become a Member!',
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 22*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*ffem/fem,
                      color: const Color(0xffDEBA3B),),),
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
                  padding: EdgeInsets.fromLTRB(40*fem, 20*fem, 40*fem, 40*fem),
                  child: Form(
                    child: Column(
                      children: [
                        Text('Register',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff1a1363),),),
                        SizedBox(height: 20*fem,),
                        Row(
                          children: [
                            Column(//the first column
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name of Participant',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Colors.black,),),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: 500*fem,
                                  height: 65*fem,
                                  child:
                                  TextFormField(
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2*ffem/fem,
                                      color: Color(0xff332e63),
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed:true,
                                      contentPadding: EdgeInsets.all(18),
                                      filled: true,
                                      fillColor: Color(0xffECE9E9),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),
                                        ),),
                                    onChanged:(value) {},
                                    validator: (value) {if(value==null || value.isEmpty){
                                      return 'Please provide your email';
                                    }
                                    else if (GetUtils.isEmail(value!)) {
                                      return null;
                                    }
                                    return 'Please enter a valid email';
                                    },
                                  ),
                                ),
                                Text('Email Address',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Colors.black,),),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: 500*fem,
                                  height: 65*fem,
                                  child:
                                  TextFormField(
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2*ffem/fem,
                                      color: Color(0xff332e63),
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed:true,
                                      contentPadding: EdgeInsets.all(18),
                                      filled: true,
                                      fillColor: Color(0xffECE9E9),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),
                                      ),),
                                    onChanged:(value) {},
                                    validator: (value) {if(value==null || value.isEmpty){
                                      return 'Please provide your email';
                                    }
                                    else if (GetUtils.isEmail(value!)) {
                                      return null;
                                    }
                                    return 'Please enter a valid email';
                                    },
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Plan',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Colors.black,),),
                                        SizedBox(height: 10,),
                                        SizedBox(
                                          width: 230*fem,
                                          height: 65*fem,
                                          child:
                                          TextFormField(
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2*ffem/fem,
                                              color: Color(0xff332e63),
                                            ),
                                            decoration: InputDecoration(
                                              isCollapsed:true,
                                              contentPadding: EdgeInsets.all(18),
                                              filled: true,
                                              fillColor: Color(0xffECE9E9),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10*fem),
                                                borderSide: BorderSide(color: Color(0xff332e63),),),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10*fem),
                                                borderSide: BorderSide(color: Color(0xff332e63),),
                                              ),),
                                            onChanged:(value) {},
                                            validator: (value) {if(value==null || value.isEmpty){
                                              return 'Please provide your email';
                                            }
                                            else if (GetUtils.isEmail(value!)) {
                                              return null;
                                            }
                                            return 'Please enter a valid email';
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width:40*fem,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Price',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Colors.black,),),
                                        SizedBox(height: 10,),
                                        SizedBox(
                                          width: 230*fem,
                                          height: 65*fem,
                                          child:
                                          TextFormField(
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2*ffem/fem,
                                              color: Color(0xff332e63),
                                            ),
                                            decoration: InputDecoration(
                                              isCollapsed:true,
                                              contentPadding: EdgeInsets.all(18),
                                              filled: true,
                                              fillColor: Color(0xffECE9E9),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10*fem),
                                                borderSide: BorderSide(color: Color(0xff332e63),),),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10*fem),
                                                borderSide: BorderSide(color: Color(0xff332e63),),
                                              ),),
                                            onChanged:(value) {},
                                            validator: (value) {if(value==null || value.isEmpty){
                                              return 'Please provide your email';
                                            }
                                            else if (GetUtils.isEmail(value!)) {
                                              return null;
                                            }
                                            return 'Please enter a valid email';
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 40*fem,),
                            Column(//the second column
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Date of Join',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Colors.black,),),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: 380*fem,
                                  height: 65*fem,
                                  child:
                                  TextFormField(
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2*ffem/fem,
                                      color: Color(0xff332e63),
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed:true,
                                      contentPadding: EdgeInsets.all(18),
                                      filled: true,
                                      fillColor: Color(0xffECE9E9),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),
                                      ),),
                                    onChanged:(value) {},
                                    validator: (value) {if(value==null || value.isEmpty){
                                      return 'Please provide your email';
                                    }
                                    else if (GetUtils.isEmail(value!)) {
                                      return null;
                                    }
                                    return 'Please enter a valid email';
                                    },
                                  ),
                                ),
                                Text('Date of Join',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Colors.black,),),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: 380*fem,
                                  height: 65*fem,
                                  child:
                                  TextFormField(
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2*ffem/fem,
                                      color: Color(0xff332e63),
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed:true,
                                      contentPadding: EdgeInsets.all(18),
                                      filled: true,
                                      fillColor: Color(0xffECE9E9),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),
                                      ),),
                                    onChanged:(value) {},
                                    validator: (value) {if(value==null || value.isEmpty){
                                      return 'Please provide your email';
                                    }
                                    else if (GetUtils.isEmail(value!)) {
                                      return null;
                                    }
                                    return 'Please enter a valid email';
                                    },
                                  ),
                                ),
                                Text('Contact No.',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Colors.black,),),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: 380*fem,
                                  height: 65*fem,
                                  child:
                                  TextFormField(
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2*ffem/fem,
                                      color: Color(0xff332e63),
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed:true,
                                      contentPadding: EdgeInsets.all(18),
                                      filled: true,
                                      fillColor: Color(0xffECE9E9),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),
                                      ),),
                                    onChanged:(value) {},
                                    validator: (value) {if(value==null || value.isEmpty){
                                      return 'Please provide your email';
                                    }
                                    else if (GetUtils.isEmail(value!)) {
                                      return null;
                                    }
                                    return 'Please enter a valid email';
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40*fem,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 200*fem,
                                height: 42*fem,
                                decoration: BoxDecoration (
                                  color: const Color(0xff1a1363),
                                  borderRadius: BorderRadius.circular(24*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Avail Membership',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5*ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 200*fem,
                                height: 42*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xff1a1363),
                                  ),
                                  borderRadius: BorderRadius.circular(24*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: const Color(0xff1a1363),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
