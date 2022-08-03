import 'package:get/get.dart';

import 'routes_imports.dart';

class AppPages {
  AppPages._();

  static List<GetPage> pages = [
    GetPage(
      name: HomePage.route,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: SecondPage.route,
      page: () => const SecondPage(),
      binding: SecondBindings(),
    ),
  ];
}
