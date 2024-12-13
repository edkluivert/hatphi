

import 'package:hatphi/core/core_ext.dart';

///To remove the glow effect when the user scrolls through the edges in the app

class AppScrollBehavior extends MaterialScrollBehavior  {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details,) {
    return child;
  }
}