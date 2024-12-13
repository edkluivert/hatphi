import 'package:hatphi/core/utils/extra/custom_responsiveness.dart';
import 'package:hatphi/features/features_ext.dart';
import 'package:hatphi/features/verification/layouts/verification_desktop_layout.dart';
import 'package:hatphi/features/verification/layouts/verification_mobile_layout.dart';
import 'package:hatphi/features/verification/layouts/verification_tablet_layout.dart';


class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomResponsiveScreen(
      mobile: VerificationMobileLayout(),
      tablet: VerificationTabLayout(),
      desktop: VerificationDesktopLayout(),
      ipad: VerificationTabLayout(),
    );
  }
}
