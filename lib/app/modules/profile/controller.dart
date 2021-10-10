import 'package:democratize_app/app/modules/profile/repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final ProfileRepository repository;
  ProfileController(this.repository);
}
