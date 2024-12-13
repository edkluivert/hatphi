
import 'package:hatphi/core/core_ext.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    required this.text,
    Size? preferredSize,
    super.key,
  }) : preferredSize = preferredSize ?? const Size.fromHeight(64);

  @override
  final Size preferredSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AppBar(
      elevation: 0,
      shadowColor: Colors.transparent,
      title: Text(text,
        style: theme.headlineLarge?.copyWith(
          height: 24.8/20,
        ),
      ),
      leadingWidth: 40,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 5),
        child: Material(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(50),
          child: InkResponse(
            onTap: () {
              context.pop();
            },
            borderRadius: BorderRadius.circular(50),
            child: Icon(Icons.arrow_back_ios,
              size: 16,
              color: AppColors.primaryColor,),
          ),
        ),
      ),
    );
  }
}
