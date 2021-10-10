import 'package:democratize_app/app/modules/noticias/repository.dart';
import 'package:get/get.dart';

class NoticiasController extends GetxController {
  final NoticiasRepository repository;
  NoticiasController(this.repository);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
