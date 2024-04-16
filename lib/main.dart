import 'package:connect_gym/presentation/TheMotherDisplay/responsive/the_mother_dispaly_desktop.dart';
import 'package:connect_gym/presentation/dashboard_page/responsive/dashboard_desktop.dart';
import 'package:connect_gym/presentation/door_access_page/responsive/door_access_desktop.dart';
import 'package:connect_gym/presentation/message_content_page/responsive/message_content_desktop.dart';
import 'package:connect_gym/presentation/plan_update_page/responsive/plan_update_desktop.dart';
import 'package:connect_gym/presentation/registration_page/responsive/registration_desktop.dart';
import 'package:connect_gym/presentation/sidebar/responsive/sidebar_desktop.dart';
import 'package:connect_gym/presentation/view_members_page/responsive/view_members_desktop.dart';
import 'package:flutter/material.dart';
import 'package:connect_gym/presentation/login_page/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TheMotherDisplayDesktop(),


    );
  }
}