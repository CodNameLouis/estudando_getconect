import 'package:estudando_getconect/presenter/home/widgets/body_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Via Cep'),
      ),
      body: const BodyHome(),
    );
  }
}
