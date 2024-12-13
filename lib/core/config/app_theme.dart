

import 'package:hatphi/core/core_ext.dart';

class AppTheme {
  static final _textStyle = AppTextStyle.instance;

  static ThemeData light = ThemeData(
    fontFamily: strPlusJakarta,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.primaryColor,
    cardColor: AppColors.primaryColor,
    hintColor: AppColors.primaryColor,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.secondaryColor,
    ),
    // buttonTheme: ButtonThemeData(
    //   buttonColor: AppColors.secondaryColor,
    //     textTheme: ButtonTextTheme.primary,
    //   colorScheme:  Get.theme.colorScheme.
    //   copyWith(secondary: AppColors.secondaryColor ,
    //   background: AppColors.secondaryColor),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondaryColor,
      surfaceTintColor: AppColors.secondaryColor,
    ),
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
    ),
    // primarySwatch: AppColors.primarySwatch,
    textSelectionTheme: TextSelectionThemeData(
      selectionHandleColor: AppColors.secondaryColor,
      selectionColor: AppColors.accentColor.withOpacity(0.5),
      cursorColor: AppColors.secondaryColor,
    ),
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge,
      displayMedium: _textStyle.displayMedium,
      displaySmall: _textStyle.displaySmall,
      headlineLarge: _textStyle.headlineLarge,
      headlineMedium: _textStyle.headlineMedium,
      headlineSmall: _textStyle.headlineSmall,
      titleLarge: _textStyle.titleLarge,
      titleSmall: _textStyle.titleSmall,
      titleMedium: _textStyle.titleMedium,
      labelLarge: _textStyle.labelLarge,
      labelMedium: _textStyle.labelMedium,
      labelSmall: _textStyle.labelSmall,
      bodyLarge: _textStyle.bodyLarge,
      bodyMedium: _textStyle.bodyMedium,
      bodySmall: _textStyle.bodySmall,
    ),
    colorScheme: ColorScheme(
      primary: AppColors.primaryColor,
      brightness: Brightness.light,
      onPrimary: AppColors.primaryColor,
      secondary: AppColors.primaryColor,
      onSecondary: AppColors.primaryColor,
      error: AppColors.secondaryColor,
      onError: AppColors.secondaryColor,
      surface: AppColors.primaryColor,
      onSurface: AppColors.secondaryColor,
    ),
  );
}
