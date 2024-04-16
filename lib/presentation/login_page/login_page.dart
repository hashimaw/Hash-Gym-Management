import 'package:connect_gym/presentation/login_page/responsive/login_desktop.dart';
import 'package:connect_gym/presentation/login_page/responsive/login_mobile.dart';
import 'package:connect_gym/presentation/login_page/responsive/login_tablet.dart';
import 'package:connect_gym/presentation/responsive.dart';
import 'package:flutter/material.dart';
import 'test.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(MobileLayout: LoginMobile(), TabletLayout: LoginTablet(), DesktopLayout: LoginDesktop()),
    );
  }
}
