
import 'dart:developer';
/// Wrote this to make things easier with go router

extension GoRouterPathConverter on String {
  String get toPath {
    log(this);  // Log the original string
    return '/$this';  // return the correct path
  }
  String removeLeading() {
    if (startsWith('/')) {
      return substring(1);  // Remove the leading slash
    }
    return this;  // Return the string as is
  }
}
