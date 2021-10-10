import 'package:democratize_app/app/data/providers/api.dart';
import 'package:democratize_app/app/modules/profile/controller.dart';
import 'package:democratize_app/app/modules/profile/repository.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
        () => ProfileController(ProfileRepository(MyApi())));
  }
}
