import 'package:democratize_app/app/modules/dashboard/repository.dart';
import 'package:democratize_app/app/modules/home/binding.dart';
import 'package:democratize_app/app/modules/home/page.dart';
import 'package:democratize_app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final DashBoardRepository repository;
  DashboardController(this.repository);
  final index = 0.obs;
  final pages = <String>[Routes.HOME, Routes.NOTICIAS, Routes.PERFIL];
  changePage(i) {
    if (i != index.value) {
      index.value = i;
      Get.toNamed(pages[index.value], id: 1);
    }
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
          settings: settings, page: () => HomePage(), binding: HomeBinding());
    }
    if (settings.name == Routes.NOTICIAS) {
      return GetPageRoute(
          settings: settings, page: () => HomePage(), binding: HomeBinding());
    }
    if (settings.name == Routes.PERFIL) {
      return GetPageRoute(
          settings: settings, page: () => HomePage(), binding: HomeBinding());
    }

    return null;
  }
}
