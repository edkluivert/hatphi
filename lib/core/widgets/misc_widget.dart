

import 'package:hatphi/core/core_ext.dart';

OutlineInputBorder defaultBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(kTextFieldRad),
    borderSide: BorderSide.none,
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(kTextFieldRad),
    borderSide: BorderSide(
      color: AppColors.textColor ,
    ),
  );
}

OutlineInputBorder enabledBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(kTextFieldRad),
    borderSide: BorderSide.none,
  );
}

OutlineInputBorder focusedBorder({Color? focusedBorderColor}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(kTextFieldRad),
    borderSide: BorderSide(
      color: focusedBorderColor ?? AppColors.textColor,
    ),
  );
}
