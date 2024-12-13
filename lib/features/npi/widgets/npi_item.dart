import 'package:hatphi/core/widgets/clickable_widget.dart';
import 'package:hatphi/features/features_ext.dart';
import 'package:hatphi/features/npi/model/npi_model.dart';

class NpiItem extends StatelessWidget {
  const NpiItem({
    required this.npiModel,
    required this.onTap,
    super.key,});

  final NpiModel npiModel;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kTextFieldRad),
        border: Border.all(
          color: AppColors.dividerColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(strNpiSpecialty,
                style: theme.displayLarge?.copyWith(
                  height: 22/17,
                 ),
                ),
                const Gap(4),
                Text('NPI #: ${npiModel.code}',
                style: theme.bodySmall?.copyWith(
                  height: 22/14,
                ),),
              ],
            ),
            ClickableWidget(
              onTap: onTap,
              padding: 0,
              borderRadius: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.lytPink,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 11,),
                  child: Text(strDelete,
                  style: theme.bodySmall?.copyWith(
                    fontFamily: strGeomanist,
                    color: AppColors.red,
                    height: 13/14,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
