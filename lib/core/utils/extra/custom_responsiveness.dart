
import 'dart:io';
import 'package:flutter/material.dart';

class CustomResponsiveScreen extends StatelessWidget {
  const CustomResponsiveScreen({
    required this.mobile, required this.tablet,
    required this.desktop, required this.ipad, super.key,
  });

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget ipad;



  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;



  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700 &&
          MediaQuery.of(context).size.width <= 1100;



  static bool isIpad(BuildContext context) =>
      MediaQuery.of(context).size.width >= 810 &&
          MediaQuery.of(context).size.width <= 1000 &&Platform.isIOS;


  static bool isIpadAir(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
          MediaQuery.of(context).size.width <= 1000 &&Platform.isIOS;

  static bool isDeskTop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth >= 1100) {
          return desktop;
        } else if (constrains.maxWidth >=
            800 && constrains.maxWidth <= 1000 && Platform.isAndroid) {
          return tablet;
        } else if (constrains.maxWidth
            >= 800 && constrains.maxWidth <=1000 && Platform.isIOS){
          return ipad;
        } else{
          return mobile;
        }
      },
    );
  }
}