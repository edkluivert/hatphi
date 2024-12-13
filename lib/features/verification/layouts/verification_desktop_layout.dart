import 'package:flutter/services.dart';
import 'package:hatphi/features/features_ext.dart';
class VerificationDesktopLayout extends StatelessWidget {
  const VerificationDesktopLayout({super.key});
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
                        width: 76,
                        height: 76,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new,
                            size: 30,
                            color: AppColors.primaryColor,),
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(size.height/6),
                WebsafeSvg.asset(icEmail.svg,width: size.width/2,
                  height: size.height/5,),
                const Gap(25),
                Text('Verification Link',
                  style: theme.displayLarge?.copyWith(
                    fontSize: 43,
                  ),),
                const Gap(22),
                Text('Please check you inbox for verification link sent to',
                  style: theme.bodySmall?.copyWith(fontSize: 26),
                  textAlign: TextAlign.center,
                ),
                Text('tabish@m2m.com',
                  style: theme.displayLarge?.copyWith(
                    fontSize: 26,
                  ),),
                const Gap(22),
                Wrap(
                  children: [
                    Text('not in inbox or spam folder?  ',
                      style: theme.bodySmall?.copyWith(fontSize: 26),),
                    Text('Resend',
                      style: theme.displayLarge?.copyWith(
                        fontSize: 26,
                        color: AppColors.blue,
                      ),),
                  ],
                ),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: PrimaryButton(label: strClose,
                    onPressed: (){
                     context.pop();
                    },),
                ),
                const Spacer(),
              ],
            ),
          ),),
      ),
    );
  }
}