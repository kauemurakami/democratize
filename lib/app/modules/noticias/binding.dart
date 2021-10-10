import 'package:democratize_app/app/data/providers/api.dart';
import 'package:democratize_app/app/modules/noticias/controller.dart';
import 'package:democratize_app/app/modules/noticias/repository.dart';
import 'package:get/get.dart';

class NoticiasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticiasController>(
        () => NoticiasController(NoticiasRepository(MyApi())));
  }
}
