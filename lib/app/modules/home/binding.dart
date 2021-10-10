import 'package:democratize_app/app/data/providers/api.dart';
import 'package:democratize_app/app/modules/home/controller.dart';
import 'package:democratize_app/app/modules/home/repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
