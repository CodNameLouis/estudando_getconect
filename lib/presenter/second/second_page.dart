import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './second_controller.dart';
import 'widgets/body_second.dart';

class SecondPage extends GetView<SecondController> {
  static const route = '/second';

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: const BodySecond(),
    );
  }
}
