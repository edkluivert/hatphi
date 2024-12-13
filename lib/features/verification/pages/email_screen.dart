import 'package:hatphi/core/model/user_model.dart';
import 'package:hatphi/core/widgets/custom_text_field.dart';
import 'package:hatphi/features/features_ext.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({ required this.field,
    super.key, });

  final String field;

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {

  late TextEditingController textEditingController;

  late String credentialField;

  UserModel user = UserModel.dummy();


  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    setState(() {
      credentialField = widget.field;
      textEditingController.text = credentialField;
    });

  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar:  const DefaultAppBar(text: strEmail),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const Gap(32),
            CustomTextField(
              labelText: strEnterEmail,
              textController: textEditingController,
            ),
            const Gap(17),
            PrimaryButton(
              label: strSave,
              onPressed: (){
                context.push(AppRoutes.verification);
              },),

          ],
        ),
      ),
    );
  }




}
