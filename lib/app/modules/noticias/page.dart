import 'package:democratize_app/app/modules/noticias/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticiasPage extends GetView<NoticiasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('NoticiasPage')),
        body: SafeArea(child: Text('NoticiasController')));
  }
}
