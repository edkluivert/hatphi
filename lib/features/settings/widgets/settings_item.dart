import 'package:hatphi/core/widgets/clickable_widget.dart';
import 'package:hatphi/features/features_ext.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.showArrow = true,
    super.key,});
  final String title;
  final String subtitle;
  final GestureTapCallback onTap;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);
    return ClickableWidget(
      padding: 0,
      borderRadius: 0,
      onTap: onTap,
      child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.010,
                  bottom: size.height * 0.010,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                  style: theme.bodySmall?.copyWith(
                     fontSize: 15,
                  ),),
                  Row(
                    children: [
                      Text(subtitle,
                        style: theme.bodySmall?.copyWith(
                          fontSize: 15,
                          color: AppColors.textColor.withAlpha(61),
                        ),
                      ),
                      const Gap(10),
                      Visibility(
                        visible: showArrow,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_forward_ios,
                              size: 10,
                              color: AppColors.primaryColor,),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: AppColors.dividerColor,
              height: 1,
            ),
          ],
      ),
    );
  }
}
