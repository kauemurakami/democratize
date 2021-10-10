import 'package:democratize_app/app/modules/profile/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ProfilePage')),
        body: SafeArea(child: Text('ProfileController')));
  }
}
