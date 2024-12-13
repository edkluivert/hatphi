import 'package:hatphi/core/core_ext.dart';
import 'package:hatphi/core/utils/extra/go_router_path_converter.dart';
import 'package:hatphi/features/block_list/pages/block_list_screen.dart';
import 'package:hatphi/features/edit_credentials/pages/edit_credential_screen.dart';
import 'package:hatphi/features/identity/pages/identity_screen.dart';
import 'package:hatphi/features/npi/pages/npi_screen.dart';
import 'package:hatphi/features/password/pages/password_screen.dart';
import 'package:hatphi/features/settings/pages/settings_screen.dart';
import 'package:hatphi/features/verification/pages/email_screen.dart';
import 'package:hatphi/features/verification/pages/verification_screen.dart';


CustomTransitionPage<T> buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}

final _router = GoRouter(
  initialLocation: AppRoutes.settings,
  observers: [
    AppNavigatorObserver(),
  ],
  routes: [
    GoRoute(
      name: AppRoutes.settings.removeLeading(),
      path: AppRoutes.settings,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const SettingsScreen(),
      ),
    ),
    GoRoute(
      name: AppRoutes.credentials.removeLeading(),
      path: AppRoutes.credentials,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const NpiScreen(),
      ),
    ),
    GoRoute(
      name: AppRoutes.editCredential.removeLeading(),
      path: AppRoutes.editCredential,
      pageBuilder: (context, state) {
        final body = state.extra! as Map<String, String>;
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child:  EditCredentialScreen(
            title: body['title']??'',
            field : body['field']??'',
          ),
        );
      },
    ),
    GoRoute(
      name: AppRoutes.emailVerification.removeLeading(),
      path: AppRoutes.emailVerification,
      pageBuilder: (context, state) {
        final body = state.extra! as String;
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child:  EmailVerificationScreen(
            field : body ??'',
          ),
        );
      },
    ),
    GoRoute(
      name: AppRoutes.verification.removeLeading(),
      path: AppRoutes.verification,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const VerificationScreen(),
      ),
    ),
    GoRoute(
      name: AppRoutes.password.removeLeading(),
      path: AppRoutes.password,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const PasswordScreen(),
      ),
    ),
    GoRoute(
      name: AppRoutes.identity.removeLeading(),
      path: AppRoutes.identity,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: IdentityScreen(),
      ),
    ),
    GoRoute(
      name: AppRoutes.blockList.removeLeading(),
      path: AppRoutes.blockList,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const BlockListScreen(),
      ),
    ),
  ],
);

GoRouter get router => _router;