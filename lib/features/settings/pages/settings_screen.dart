
import 'package:hatphi/core/model/user_model.dart';
import 'package:hatphi/features/features_ext.dart';
import 'package:hatphi/features/settings/widgets/settings_item.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  UserModel userModel = UserModel.dummy();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const DefaultAppBar(text: strSettings),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
         child: Column(
           children: [
             Gap(size.height * 0.032),
             Image.asset(imLogo.png,
             width: size.width/3, height: size.height/10,),
             Gap(size.height * 0.045),
             SettingsItem(
                 title: strFullName,
                 subtitle: userModel.fullName,
                 onTap: ()async{
                    final result = await context.push(AppRoutes.editCredential,
                    extra: {
                      'title' : strFullName,
                      'field' : userModel.fullName,
                    },
                    );
                    updateModel(result);
                   },
             ),
             SettingsItem(
               title: strBusinessName,
               subtitle: userModel.businessName,
               onTap: ()async{
                 final result = await context.push(AppRoutes.editCredential,
                   extra: {
                     'title' : strBusinessName,
                     'field' : userModel.businessName,
                   },
                 );
                 updateModel(result);
               },
             ),
             SettingsItem(
               title: strEmail,
               subtitle: userModel.email,
               onTap: (){
                 context.push(AppRoutes.emailVerification,
                   extra: userModel.email,
                 );
               },
             ),
             SettingsItem(
               title: strPhoneNumber,
               subtitle: userModel.phoneNumber,
               onTap: ()async{
                 final result = await context.push(AppRoutes.editCredential,
                   extra: {
                     'title' : strPhoneNumber,
                     'field' : userModel.phoneNumber,
                   },
                 );
                 updateModel(result);
               },
             ),
             SettingsItem(
               title: strZipCode,
               subtitle: userModel.zipcode,
               onTap: ()async{
                final result =  await context.push(AppRoutes.editCredential,
                   extra: {
                     'title' : strZipCode,
                     'field' : userModel.zipcode,
                   },
                 );
                updateModel(result);
               },
             ),
             SettingsItem(
               title: strPassword,
               subtitle: userModel.password,
               onTap: (){
                 context.push(AppRoutes.password);
               },
             ),
             SettingsItem(
               title: strID,
               subtitle: userModel.id,
               onTap: (){
                 context.push(AppRoutes.identity);
               },
             ),
             SettingsItem(
               title: strNPI,
               subtitle: '',
               onTap: (){
                 context.push(AppRoutes.credentials);
               },
             ),
             SettingsItem(
               title: strBlockList,
               subtitle: '',
               showArrow: false,
               onTap: (){
                 context.push(AppRoutes.blockList);
               },
             ),
           ],
         ),
       ),
    );
  }

  void updateModel(dynamic result){
    if (result is UserModel) {
      setState(() {
        userModel = result;
      });
    }
  }
}
