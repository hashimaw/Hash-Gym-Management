import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class ResponsiveLayout extends StatelessWidget {
  final MobileLayout;
  final TabletLayout;
  final DesktopLayout;
  ResponsiveLayout({required this.MobileLayout, required this.TabletLayout, required this.DesktopLayout});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < 640){
            return MobileLayout;
          }
          else if(constraints.maxWidth > 641 && constraints.maxWidth < 1007){
            return TabletLayout;
          }
          else{
            return DesktopLayout;
          }

        }
    );
  }
}
