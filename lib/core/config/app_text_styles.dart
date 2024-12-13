

import 'package:hatphi/core/core_ext.dart';

class AppTextStyle {
  AppTextStyle._();

  static final instance = AppTextStyle._();


  TextStyle displayLarge = TextStyle(
    color: AppColors.textColor,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  // primary button
  TextStyle displayMedium = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  TextStyle displaySmall = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // appbar
  TextStyle headlineLarge = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  // kyc title
  TextStyle headlineMedium = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  TextStyle headlineSmall = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryColor,
    fontSize: 14,
  );

  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
    fontSize: 14,
  );

  // kyc verify subtitle
  TextStyle titleSmall = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  TextStyle labelLarge = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );


  TextStyle labelMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle labelSmall = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );


  TextStyle bodyLarge = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );


  TextStyle bodyMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle bodySmall = TextStyle(
    color: AppColors.textColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}

Widget textThemeSample(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'displayLarge',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          'displayMedium',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'displaySmall',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          'headlineLarge',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          'headlineMedium',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'headlineSmall',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'titleLarge',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'titleMedium',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'titleSmall',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          'labelLarge',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          'labelMedium',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          'labelSmall',
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          'bodyLarge',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'bodyMedium',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          'bodySmall',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}
