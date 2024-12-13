import 'package:hatphi/core/extensions/assets_ext.dart';
import 'package:hatphi/core/widgets/clickable_widget.dart';
import 'package:hatphi/features/block_list/model/block_list_model.dart';
import 'package:hatphi/features/features_ext.dart';

class BlockItem extends StatelessWidget {
  const BlockItem({
    required this.blockListModel,
    required this.onTap,
    super.key,
  });

  final BlockListModel blockListModel;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);
    return ColoredBox(
      color: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: size.width / 10,
                      height: size.height / 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              blockListModel.image.png,
                            ),
                          )),
                    ),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          blockListModel.name,
                          style: theme.bodyMedium?.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        const Gap(4),
                        Text(
                          blockListModel.userName,
                          style: theme.bodySmall?.copyWith(
                            fontSize: 13,
                            color: AppColors.greyUser,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ClickableWidget(
                  padding: 0,
                  borderRadius: 50,
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.blue.withAlpha(8),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width/20,
                        vertical: size.height * 0.005,
                      ),
                      child: Text(
                        strUnblock,
                        style: theme.bodySmall?.copyWith(
                          fontSize: 13,
                          color: AppColors.blue,
                          fontFamily: strGeomanist,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: AppColors.blockDivider,
          ),
        ],
      ),
    );
  }
}
