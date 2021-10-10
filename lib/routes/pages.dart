import 'package:democratize_app/app/modules/auth/binding.dart';
import 'package:democratize_app/app/modules/auth/page.dart';
import 'package:democratize_app/app/modules/dashboard/binding.dart';
import 'package:democratize_app/app/modules/dashboard/page.dart';
import 'package:democratize_app/app/modules/home/binding.dart';
import 'package:democratize_app/app/modules/home/page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.AUTH,
      page: () => AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
            preventDuplicates: true,
            name: Routes.HOME,
            page: () => HomePage(),
            binding: HomeBinding()),
        // GetPage(
        //     preventDuplicates: true,
        //     name: Routes.ALL_EXERCISES,
        //     page: () => ExercisesPage(),
        //     binding: ExercisesBinding()),
        // GetPage(
        //     preventDuplicates: true,
        //     name: Routes.SETTINGS,
        //     page: () => SettingsPage(),
        //     binding: SettingsBinding()),
      ],
    ),
  ];
}
