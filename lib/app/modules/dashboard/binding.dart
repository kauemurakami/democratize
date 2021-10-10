import 'package:democratize_app/app/data/providers/api.dart';
import 'package:democratize_app/app/modules/dashboard/controller.dart';
import 'package:democratize_app/app/modules/dashboard/repository.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
        () => DashboardController(DashBoardRepository(MyApi())));
  }
}
