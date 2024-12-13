


import 'package:flutter/services.dart';
import 'package:hatphi/core/core_ext.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.textController,
    this.hintText = '',
    this.readOnly = false,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
    this.autoFocus = false,
    this.labelText = '',
    this.isPassword = false,
    this.obscureText = false,
    this.validator,
    //this.maxLines,
    super.key,
    this.toggleObscurity,
    this.onSaved,
    this.prefixIcon,
    this.showPrefix = false,
    this.textInputType = TextInputType.text,
    this.errorText = '',
    this.formatter,
    this.isRequiredField = false,
    this.fillColor = const Color(0xFFF0F0EE),
  });
  final TextEditingController? textController;
  final String hintText;
  final String errorText;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final bool autoFocus;
  final String labelText;
  final VoidCallback? onClear;
  final FormFieldValidator<String>? validator;
  //final int? maxLines;
  final Color fillColor;
  final bool readOnly;
  final bool? obscureText;
  final VoidCallback? toggleObscurity;
  final bool isPassword;
  final bool showPrefix;
  final Widget? prefixIcon;
  final FormFieldSetter<String>? onSaved;
  final TextInputType textInputType;
  final TextInputFormatter? formatter;
  final bool isRequiredField;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: labelText.isNotEmpty && !isRequiredField,
            child: Text(
              labelText,
              style: theme.labelMedium?.copyWith(
                fontSize: 14,
              ),
            ),
          ),
          Visibility(
              visible: labelText.isNotEmpty && isRequiredField,
              child: Row(
            children: [
              Text(
                labelText,
                style: theme.labelMedium?.copyWith(fontSize: 14),
              ),
              Text('*',
                style: theme.labelMedium?.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),),
          if(labelText.isNotEmpty)
          const Gap(10),
          TextFormField(
            //maxLines: maxLines,
            validator: validator,
            autofocus: autoFocus,
            onSaved: onSaved,
            readOnly: readOnly,
            obscureText: obscureText!,
            style: theme.labelMedium?.copyWith(
              color: AppColors.textColor,
              fontSize: 14,
            ),
            controller: textController,
            textInputAction: TextInputAction.next,
            keyboardType: textInputType,
            onFieldSubmitted: onSubmitted,
            onChanged: onChanged,
            inputFormatters: [
              if(formatter != null)
                formatter!,

            ],
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: showPrefix ? prefixIcon : null,
              suffixIcon: isPassword
                  ? InkResponse(
                onTap: toggleObscurity,
                child: obscureText!
                    ? Icon(
                  Icons.visibility,
                  color: AppColors.textColor,
                )
                    : Icon(Icons.visibility_off, color: AppColors.textColor),
              )
                  : null,
              filled: true,
              fillColor: fillColor,
              contentPadding: const EdgeInsets.all(10),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintStyle: theme.labelSmall?.copyWith(
                color: AppColors.textColor.withOpacity(0.50),
              ),
              border: defaultBorder(),
              focusedBorder: focusedBorder(),
              errorBorder: enabledBorder(),
              enabledBorder:  defaultBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
