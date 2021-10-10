import 'package:democratize_app/app/data/providers/api.dart';
import 'package:democratize_app/app/modules/auth/controller.dart';
import 'package:democratize_app/app/modules/auth/repository.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController(AuthRepository(MyApi())));
  }
}
