import 'package:hatphi/core/model/user_model.dart';
import 'package:hatphi/core/widgets/custom_text_field.dart';
import 'package:hatphi/features/features_ext.dart';

class EditCredentialScreen extends StatefulWidget {
  const EditCredentialScreen({required this.title, required this.field,
    super.key, });
  final String title;
  final String field;

  @override
  State<EditCredentialScreen> createState() => _EditCredentialScreenState();
}

class _EditCredentialScreenState extends State<EditCredentialScreen> {

  late TextEditingController textEditingController;

  late String title;
  late String credentialField;

  UserModel user = UserModel.dummy();


  @override
  void initState() {
    super.initState();
   textEditingController = TextEditingController();
    setState(() {
      title = widget.title;
      credentialField = widget.field;
      textEditingController.text = credentialField;
    });

  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar:  DefaultAppBar(text: title),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const Gap(32),
            CustomTextField(
              labelText: getFieldDescription(title),
              textController: textEditingController,
            ),
            const Gap(17),
            PrimaryButton(
              label: strSave,
            onPressed: (){
              saveDataAndNavigateBack(title, context);
            },),
            const Gap(30),
            Visibility(
              visible: getFieldDescription(title) == strEnterName,
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                   color: AppColors.blue.withAlpha(7),
                   borderRadius: BorderRadius.circular(kTextFieldRad),
                  border: Border.all(
                    color: AppColors.blue,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                  child: Row(
                    children: [
                      Icon(Icons.info,
                      color: AppColors.blue, size: size.height * 0.016,),
                      const Gap(8),
                      Text('Changing the name will trigger New ID Verification.',
                      style: theme.bodySmall?.copyWith(
                        fontSize: 12,
                          color: AppColors.blue,
                        letterSpacing: 0.1,
                        height: 21/12,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getFieldDescription(String fieldName) {
    switch (fieldName) {
      case strFullName:
        return strEnterName;
      case strBusinessName:
        return strEnterBusinessName;
      case strPhoneNumber:
        return strEnterPhoneNumber;
      case strZipCode :
        return strEnterZipCode;
      default:
        return 'Field description not available.';
    }
  }

  void saveDataAndNavigateBack(String desc, BuildContext context) {
    switch (desc) {
      case strFullName:
        user = user.copyWith(
          fullName: textEditingController.text.trim(),
        );
      case strBusinessName:
        user = user.copyWith(
          businessName: textEditingController.text.trim(),
        );
      case strPhoneNumber:
        user = user.copyWith(
          phoneNumber: textEditingController.text.trim(),
        );
      case strZipCode:
        user = user.copyWith(
          zipcode: textEditingController.text.trim(),
        );
      default:
        break;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Saved')),
    );
    context.pop(user);
  }

}
