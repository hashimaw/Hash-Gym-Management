import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils.dart';
import '../controller/user_controller.dart';

class LoginMobile extends StatelessWidget {
  final UserController userController = Get.put(UserController());
  final _formKey = GlobalKey<FormState>();
  LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,

        child: Container(
          // managementapploginpagevRa (21:483)
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/management-app-login-page-bg.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle111okG (28:70)
                left: 70*fem,
                top: 87*fem,
                child: Align(
                  child: SizedBox(
                    width: 1300*fem,
                    height: 1400*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                        color: Color(0x5bd9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle110HvL (28:69)
                left: 95*fem,
                top: 112*fem,
                child: Align(
                  child: SizedBox(
                    width: 1250*fem,
                    height: 1350*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                        color: Color(0xb7d9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle109bw2 (28:68)
                left: 120*fem,
                top: 137*fem,
                child: Align(
                  child: SizedBox(
                    width: 1200*fem,
                    height: 1300*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 143*fem,),
                      SizedBox(
                        width: 400*fem,
                        height: 380*fem,
                        child: Image.asset(
                          'assets/page-1/images/n-4-Aqr.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Sign-in',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 50*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Color(0xff1a1363),
                        ),
                      ),
                      SizedBox(height: 20*fem,),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email*',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 45*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.8*ffem/fem,
                                color: Color(0xff332e63),
                              ),),
                            SizedBox(height: 20*fem,),

                            SizedBox(
                              width: 1000*fem,
                              height: 160*fem,
                              child: TextFormField(
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 45*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff332e63),
                                ),
                                decoration: InputDecoration(
                                  isCollapsed:true,
                                  contentPadding: EdgeInsets.all(15),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    borderSide: BorderSide(color: Color(0xff332e63),),),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    borderSide: BorderSide(color: Color(0xff332e63)),),),
                                onChanged:(value) {
                                  userController.setEmail(value);
                                  },
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
                            SizedBox(height: 20*fem,),
                            Text(
                              'Password*',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 45*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff332e63),
                              ),),
                            SizedBox(height: 20*fem,),
                            Obx(
                              () => SizedBox(
                                width: 1000*fem,
                                height: 160*fem,
                                child: TextFormField(
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 45*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff332e63),
                                  ),
                                  decoration:  InputDecoration(
                                      isCollapsed:true,
                                      contentPadding: EdgeInsets.all(15),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63),),),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10*fem),
                                        borderSide: BorderSide(color: Color(0xff332e63)),),
                                      suffixIcon:IconButton(
                                          onPressed: (){
                                            userController.toggleObscure();
                                          },
                                          icon: const Icon(Icons.remove_red_eye,size: 25,),
                                          color: const Color(0xff332e63))
                                  ),
                                  obscureText:userController.passObscure.value,
                                  onChanged:(value) {
                                    userController.setPassword(value);},
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    } else if (value.length < 8) {
                                      return 'Password must be at least 8 characters';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20*fem,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // remembermewQY (21:490)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 183.5*fem, 0*fem),
                            child: Obx(
                                () => DecoratedBox(
                                decoration: BoxDecoration(
                                  border: userController.showBorderRemember.value
                                      ? Border(
                                    bottom: BorderSide(color: Color(0xff1a1363), width: 2),
                                  )
                                      : null,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  onHover: (hovered) {
                                    userController.showborderRemember();
                                  },
                                  child: TextButton(
                                    style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                                    onPressed: () {},
                                    child: Text(
                                      'Remember me',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 40*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff7c77a8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Obx(
                              () => DecoratedBox(
                              decoration: BoxDecoration(
                                border: userController.showBorderForgot.value
                                    ? Border(
                                  bottom: BorderSide(color: Color(0xff1a1363), width: 2),
                                )
                                    : null,
                              ),
                              child: InkWell(
                                onTap: () {},
                                onHover: (hovered) {
                                  userController.showborderForgot();
                                },
                                child: TextButton(
                                  style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                                  onPressed: () {},
                                  child: Text(
                                    // forgotpasswordrGc (21:491)
                                    'Forgot Password?',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 40*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff1a1363),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30*fem,),
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform login operation
                            print('Logging in as ${userController.userModel.value.email}');
                            userController.clear();
                          } else {
                            print('Please enter a valid email and password');

                          }
                        },
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 500*fem,
                          height: 100*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff1a1363),
                            borderRadius: BorderRadius.circular(24*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 40*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
