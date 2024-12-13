import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hatphi/core/config/app_colors.dart';
import 'package:hatphi/core/config/app_theme.dart';
import 'package:hatphi/core/routes/app_pages.dart';
import 'package:hatphi/core/utils/extra/app_scroll_behavior.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(
  //   DevicePreview(
  //     builder: (context) => const MyApp(),
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    final light = SystemUiOverlayStyle(
      statusBarColor: AppColors.secondaryColor,
      systemNavigationBarColor: AppColors.secondaryColor,
      systemNavigationBarIconBrightness: Brightness.light,

    );
    SystemChrome.setSystemUIOverlayStyle(light);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,
      scrollBehavior: AppScrollBehavior(),
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: const [
              Breakpoint(start: 0, end: 450, name: MOBILE),
              Breakpoint(start: 451, end: 800, name: TABLET),
              Breakpoint(start: 801, end: 1920, name: DESKTOP),
              Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
        );
      },
    );
  }
}