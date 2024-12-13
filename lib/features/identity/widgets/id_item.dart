import 'package:hatphi/features/features_ext.dart';
import 'package:hatphi/features/identity/model/identity_model.dart';

class IdItem extends StatelessWidget {
  const IdItem({
    required this.identityModel,
    super.key,});

  final IdentityModel identityModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyId,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(identityModel.title,
            style: theme.displayLarge?.copyWith(
              fontSize: 15,
              color: AppColors.black,
            ),),
            Text(identityModel.subtitle,style: theme.bodySmall?.copyWith(
              fontSize: 15,
              color: AppColors.black,
            ),)
          ],
        ),
      ),
    );
  }
}
