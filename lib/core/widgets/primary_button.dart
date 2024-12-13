

import 'package:hatphi/core/core_ext.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    required this.label,
    super.key,
    this.onPressed,
    this.height,
    this.width,
    this.radius = 10,
    this.backgroundColor,
    this.textColor,
    this.prefixIcon,
    this.active = true,
    this.isLoading = false,
    this.allowSuffix = false,
  });

  final void Function()? onPressed;
  final String label;
  final double? height;
  final double? width;
  final double radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? prefixIcon;
  final bool active;
  final bool isLoading;
  final bool allowSuffix;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: widget.height ?? 56,
        width: widget.width ?? MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return widget.backgroundColor?.withAlpha(60)
                      ?? AppColors.secondaryColor.withAlpha(30);
                }
                return widget.backgroundColor ?? AppColors.secondaryColor;
              },
            ),
            shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
                  (_) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.radius),
                  // side: BorderSide(
                  //   color: AppColor.accentColor,
                  // ),
                );
              },
            ),

          ),
          onPressed: widget.active ? widget.onPressed : null,
          child: widget.isLoading ? const CircularProgressIndicator(
            color: Colors.white,) :
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: widget.textColor ??
                    getPrimaryTrueColor(active: widget.active),
                  fontWeight: FontWeight.w400,
                 height: 21/14,
                ),
              ),
              if(widget.allowSuffix)
              const Gap(11),
              if(widget.allowSuffix)
              Icon(Icons.arrow_forward_ios,color:  AppColors.primaryColor,
              size: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Color getPrimaryTrueColor({required bool active}){
  return active ?  AppColors.primaryColor :
  AppColors.secondaryColor.withAlpha(60);
}
