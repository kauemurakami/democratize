import 'package:democratize_app/app/data/providers/api.dart';
import 'package:democratize_app/app/modules/auth/binding.dart';
import 'package:democratize_app/app/modules/auth/controller.dart';
import 'package:democratize_app/app/modules/auth/page.dart';
import 'package:democratize_app/app/modules/auth/repository.dart';
import 'package:democratize_app/core/theme/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'routes/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.bottom, SystemUiOverlay.top]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      theme: CustomTheme.getTheme(context),
      initialBinding: AuthBinding(),
      getPages: AppPages.pages,
      initialRoute: Routes.AUTH,
    );
  }
}
