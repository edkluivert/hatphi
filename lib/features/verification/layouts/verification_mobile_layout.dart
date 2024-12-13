import 'package:flutter/services.dart';
import 'package:hatphi/features/features_ext.dart';
class VerificationMobileLayout extends StatelessWidget {
  const VerificationMobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                const Gap(10),
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: (){
                      context.pop();
                    },
                    child: Material(
                      color: AppColors.blue,
                      shape: const CircleBorder(),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new,
                            size: 16,
                            color: AppColors.primaryColor,),
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(size.height/6),
                WebsafeSvg.asset(icEmail.svg,width: size.width/4,
                  height: size.height/10,),
                const Gap(25),
                Text('Verification Link',
                  style: theme.displayLarge?.copyWith(
                    fontSize: 23,
                  ),),
                const Gap(22),
                Text('Please check you inbox for verification link sent to',
                  style: theme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                Text('tabish@m2m.com',
                  style: theme.displayLarge?.copyWith(
                    fontSize: 14,
                  ),),
                const Gap(22),
                Wrap(
                  children: [
                    Text('not in inbox or spam folder?  ',
                      style: theme.bodySmall,),
                    Text('Resend',
                      style: theme.displayLarge?.copyWith(
                        fontSize: 14,
                        color: AppColors.blue,
                      ),),
                  ],
                ),
                const Gap(30),
                PrimaryButton(label: strClose,
                  onPressed: (){
                  context.pop();
                  },),
                const Spacer(),
              ],
            ),
          ),),
      ),
    );
  }
}