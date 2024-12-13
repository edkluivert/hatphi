import 'package:hatphi/core/widgets/custom_text_field.dart';
import 'package:hatphi/core/widgets/primary_button.dart';
import 'package:hatphi/features/features_ext.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar:  const DefaultAppBar(text: strPassword),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const Gap(32),
            const CustomTextField(
              labelText: strEnterOldPassword,
            ),
            const Gap(21),
            const CustomTextField(
              labelText: strEnterNewPassword,
            ),
            const Gap(21),
            const CustomTextField(
              labelText: strConfirmNewPassword,
            ),
            const Gap(21),
            PrimaryButton(label: strSave,
            onPressed: (){

            },),

          ],
        ),
      ),
    );
  }
}
