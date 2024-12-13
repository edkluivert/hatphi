import 'package:hatphi/features/features_ext.dart';
import 'package:hatphi/features/npi/model/npi_model.dart';
import 'package:hatphi/features/npi/widgets/npi_item.dart';

class NpiScreen extends StatefulWidget {
  const NpiScreen({super.key});

  @override
  State<NpiScreen> createState() => _NpiScreenState();
}

class _NpiScreenState extends State<NpiScreen> {
  
  List<NpiModel> listOfNpi = [
    NpiModel(id: '1', code: '1223243435'),
    NpiModel(id: '2', code: '1223243435'),
    NpiModel(id: '3', code: '1223243435'),
    NpiModel(id: '4', code: '1223243435'),
  ];
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DefaultAppBar(text: strCredential),
      body: ListView.separated(
          padding: const EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding,
            top: 21,
          ),
          itemBuilder: (context,index){
            return NpiItem(
              onTap: (){
                showConfirmationDialog(context, listOfNpi[index], index);
              },
              npiModel: listOfNpi[index],);
          },
          separatorBuilder: (context,index){
            return const Gap(10);
          },
          itemCount: listOfNpi.length,
      ),
    );
  }

  void showConfirmationDialog(BuildContext context, NpiModel item, int index) {
    final theme = Theme.of(context).textTheme;
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Remove User',style: theme.displayLarge,),
          content: Text('Are you sure you want to remove ${item.code}?',
            style: theme.bodyMedium,),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel',style: theme.bodyMedium,),
            ),
            TextButton(
              onPressed: () {

                setState(() {
                  listOfNpi.removeAt(index);
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item.code} has been removed'),
                  ),
                );

                Navigator.of(context).pop();
              },
              child: Text('Remove', style: theme.bodyMedium,),
            ),
          ],
        );
      },
    );
  }
}
