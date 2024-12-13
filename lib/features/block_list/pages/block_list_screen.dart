import 'package:hatphi/features/block_list/model/block_list_model.dart';
import 'package:hatphi/features/block_list/widgets/block_item.dart';
import 'package:hatphi/features/features_ext.dart';

class BlockListScreen extends StatefulWidget {
  const BlockListScreen({super.key});

  @override
  State<BlockListScreen> createState() => _BlockListScreenState();
}

class _BlockListScreenState extends State<BlockListScreen> {
  List<BlockListModel> blockList = [
    BlockListModel(id: '1', image: imAvatar, name: 'Tabish Bin Tahir', userName:'tabish_m2m'),
    BlockListModel(id: '2', image: imAvatar, name: 'Tabish Bin Tahir', userName:'tabish_m2m'),
    BlockListModel(id: '3', image: imAvatar, name: 'Tabish Bin Tahir', userName:'tabish_m2m'),
    BlockListModel(id: '4', image: imAvatar, name: 'Tabish Bin Tahir', userName:'tabish_m2m'),
    BlockListModel(id: '5', image: imAvatar, name: 'Tabish Bin Tahir', userName:'tabish_m2m'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DefaultAppBar(text: strBlockList),
      body: blockList.isEmpty
          ? Center(
        child: Text(
          'Blocklist is empty',
          style: theme.bodyMedium,
        ),
      ) : ListView.builder(
        itemBuilder: (context, index) {
          final item = blockList[index];
          return Dismissible(
            key: ValueKey(item.id),
            direction: DismissDirection.endToStart,
            background: Container(
              color: AppColors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {

            },
            confirmDismiss: (direction) async {
              final bool confirmRemoval = await
              showConfirmationDialog(context, item, index);
              return confirmRemoval;
            },
            child: BlockItem(
                onTap: (){
                   showConfirmationDialog(context, item, index);
                },
                blockListModel: item,),
          );
        },
        itemCount: blockList.length,
      ),
    );
  }

  Future<bool> showConfirmationDialog(BuildContext context,
      BlockListModel item, int index,) async {
    final theme = Theme.of(context).textTheme;
    var isRemoved = false;

    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$strUnblock User?', style: theme.displayLarge,),
          content: Text('Are you sure you want to unblock ${item.userName}?',
          style: theme.bodyMedium,),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: theme.bodyMedium,),
            ),
            TextButton(
              onPressed: () {
                isRemoved = true;
                setState(() {
                  blockList.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item.userName} has been unblocked'),
                  ),
                );
                Navigator.of(context).pop();
              },
              child: Text(strUnblock, style: theme.bodyMedium,),
            ),
          ],
        );
      },
    );
    return isRemoved;
  }
}
