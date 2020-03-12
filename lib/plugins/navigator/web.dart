import 'dart:html' as html;

class NavUtils {
  NavUtils._();

  static String get initialUrl => html.window.location.pathname;
}
