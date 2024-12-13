
import 'package:hatphi/features/features_ext.dart';
import 'package:hatphi/features/identity/model/identity_model.dart';
import 'package:hatphi/features/identity/widgets/id_item.dart';

class IdentityScreen extends StatelessWidget {
   IdentityScreen({super.key});
  
  
  List<IdentityModel> listOfIdentities = [
    IdentityModel(title: 'Type', subtitle: 'National ID Card'),
    IdentityModel(title: 'ID Expiry Date', subtitle: '10-12-2028'),
    IdentityModel(title: 'ID Number', subtitle: '1231234232323'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar:  const DefaultAppBar(text: strID),
      body: ListView.separated(
          padding: const EdgeInsets.only(left: kDefaultPadding,
            right: kDefaultPadding,
          top: 27,),
          itemBuilder: (context,index){
            return IdItem(identityModel: listOfIdentities[index]);
          },
          separatorBuilder: (context,index){
            return const Gap(7);
          },
          itemCount: listOfIdentities.length,
      ),
    );
  }
}
